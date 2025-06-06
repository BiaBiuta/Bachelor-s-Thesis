// enable offline data
import { db } from './firebase.js';
import { enableIndexedDbPersistence } from "https://www.gstatic.com/firebasejs/9.6.1/firebase-firestore.js";

enableIndexedDbPersistence(db)
  .catch((err) => {
    if (err.code == 'failed-precondition') {
      console.log('Persistance failed: Multiple tabs open');
    } else if (err.code == 'unimplemented') {
      console.log('Persistence is not available');
    }
  });


// real-time listener
// db.collection('classes').onSnapshot(snapshot => {
//     // console.log(snapshot.docChanges());
//     snapshot.docChanges().forEach(change => {
//         // console.log(change.type, change.doc.id, change.doc.data());
//         if (change.type === 'added') {
//             // add the document data to the web page
//             renderClass(change.doc.data(), change.doc.id);
//         }
//         if (change.type === 'removed') {
//             // remove the document data from the web page
//             removeClassUi(change.doc.id);
//         }
//     });
// });

// db.collection('classes').where("user_id", "==", auth.currentUser.uid)
// .onSnapshot(snapshot => {
//     // console.log(snapshot.docChanges());
//     console.log(auth.currentUser);
//     snapshot.docChanges().forEach(change => {
//         // console.log(change.type, change.doc.id, change.doc.data());
//         if (change.type === 'added') {
//             // add the document data to the web page
//             renderClass(change.doc.data(), change.doc.id);
//         }
//         if (change.type === 'removed') {
//             // remove the document data from the web page
//             removeClassUi(change.doc.id);
//         }
//     });
// });