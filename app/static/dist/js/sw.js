let V = "4";
const staticCacheName = `site-static-v${V}`;
const dynamicCacheName = `site-dynamic-v${V}`;
const assets = [
    '/',
    // '/index.html',
    'calendar.html',

    'dist/js/app.js',
    'dist/js/calendar/main.js',
    'dist/js/calendar/scrollSide.js',
    'dist/js/calendar/interaction.js',
    'dist/js/calendar/timemark.js',
    'dist/js/stringJustify.js',

    'dist/img/icons/icon-64.png',
    'dist/img/icons/icon-512.png',

    'dist/js/jquery/jquery.ui.touch-punch.min.js',
    'dist/js/bootstrap-js/bootstrap.min.js',

    'dist/css/bootstrap-css/bootstrap.min.css',
    'dist/css/calendar/main.css',

    'https://code.jquery.com/jquery-3.1.0.min.js',
    'https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js',
    'https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'
];

const limitCacheSize = (name, size) => {
    caches.open(name).then(cache => {
        cache.keys().then(keys => {
            if (keys.length > size) {
                cache.delete(keys[0]).then(limitCacheSize(name, size));
            }
        });
    });
};

// install event
self.addEventListener('install', evt => {
    //console.log('service worker installed');
    evt.waitUntil(
        caches.open(staticCacheName).then((cache) => {
            console.log('caching shell assets');
            cache.addAll(assets);
        })
    );
});

// activate event
self.addEventListener('activate', evt => {
    //console.log('service worker activated');
    evt.waitUntil(
        caches.keys().then(keys => {
            //console.log(keys);
            return Promise.all(keys
                .filter(key => key !== staticCacheName)
                .map(key => caches.delete(key))
            );
        })
    );
});

// fetch event
self.addEventListener('fetch', evt => {
    //console.log('fetch event', evt);
    if (evt.request.url.indexOf('firestore.googleapis.com') === -1) {
        evt.respondWith(
            caches.match(evt.request).then(cacheRes => {
                return cacheRes || fetch(evt.request).then(fetchRes => {
                    return caches.open(dynamicCacheName).then(cache => {
                        cache.put(evt.request.url, fetchRes.clone());

                        limitCacheSize(dynamicCacheName, 15);
                        return fetchRes;
                    })
                });
            })
        );
    }
});