// firebase-init.js
import { initializeApp } from "https://www.gstatic.com/firebasejs/9.6.1/firebase-app.js";
import { getAuth } from "https://www.gstatic.com/firebasejs/9.6.1/firebase-auth.js";
import { getFirestore } from "https://www.gstatic.com/firebasejs/9.6.1/firebase-firestore.js";

const firebaseConfig = {
  apiKey: "API_KEY",
  authDomain: "auth_domain",
  projectId: "project_id",
  storageBucket: "storage_bucket",
  messagingSenderId: "messaging_sender_id",
  appId: "app_id",
  measurementId: "measurement_id"
};

const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const db = getFirestore(app);

// Export `db` pentru a fi folosit în alte fișiere
export { db, auth };
