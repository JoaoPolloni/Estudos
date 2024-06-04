import { initializeApp } from 'firebase/app';
import { getAuth, signInWithEmailAndPassword } from 'firebase/auth';
import { getFirestore, collection, addDoc, getDocs, updateDoc, deleteDoc, doc } from "firebase/firestore";
import { getDatabase, ref, push, update } from 'firebase/database';

const firebaseConfig = {
    apiKey: "AIzaSyDxlIOzDm7i99PtgE7CINDDPrNFJIWENFN",
    authDomain: "collegeclass-86e77.firebaseapp.com",
    projectId: "collegeclass-86e77",
    storageBucket: "collegeclass-86e77.appspot.com",
    messagingSenderId: "429972841447",
    appId: "1:429972841447:web:f496f07ab98f3df98b1342",
    measurementId: "G-GRT5ZV4B4B"
};

const app = initializeApp(firebaseConfig);
const auth = getAuth(app);
const db = getFirestore(app);

async function login(email, password) {
    try {
        const userCredential = await signInWithEmailAndPassword(auth, email, password);
        // console.log("User logged in:", userCredential.user);
    } catch (error) {
        console.error("Error logging in user:", error);
    }
}

async function logout() {
    try {
        await signOut(auth);
        console.log("User logged out");
    } catch (error) {
        console.error("Error logging out user:", error);
    }
}

function writeUserData(userId, nome, idade) {
    const db = getDatabase();
    const timestamp = Date.now();
    push(ref(db, 'users/' + userId + '/' + timestamp), {
        nome: nome,
        idade: idade,
    });
}

async function handleUserLogin() {
    const userId = await login('ra-21120606-2@alunos.unicesumar.edu.br', 'SENHAKKK');
    if (userId) {
        writeUserData(userId, 'Pollonigod', 20);
    } else {
        console.log('Falha na autenticação do usuário.');
        return false;
    }
}

function isAuthenticated() {
    return auth.currentUser != null;
}

async function createData(collectionName, data) {
    if (!isAuthenticated()) {
        console.error("User is not authenticated");
        return;
    }
    try {
        const docRef = await addDoc(collection(db, collectionName), data);
        console.log("Document written with ID: ", docRef.id);
    } catch (e) {
        console.error("Error adding document: ", e);
    }
}

async function readData(collectionName) {
    if (!isAuthenticated()) {
        console.error("User is not authenticated");
        return;
    }
    const querySnapshot = await getDocs(collection(db, collectionName));
    querySnapshot.forEach((doc) => {
        console.log(`${doc.id} => ${JSON.stringify(doc.data())}`);
    });
}

async function updateData(collectionName, docId, newData) {
    if (!isAuthenticated()) {
        console.error("User is not authenticated");
        return;
    }
    const docRef = doc(db, collectionName, docId);
    try {
        await updateDoc(docRef, newData);
        console.log("Document updated");
    } catch (e) {
        console.error("Error updating document: ", e);
    }
}

async function deleteData(collectionName, docId) {
    if (!isAuthenticated()) {
        console.error("User is not authenticated");
        return;
    }
    const docRef = doc(db, collectionName, docId);
    try {
        await deleteDoc(docRef);
        console.log("Document deleted");
    } catch (e) {
        console.error("Error deleting document: ", e);
    }
}

(async () => {
    await login('renanteste1234567@gmail.com', 'bx9T*rBJ97FPcf');
    // createData('class', { title: 'architeture' }) /* XvVkFvofgOemkNXCF5bw */
    createData('class', { title: 'math' })
    // updateData('class', 'XvVkFvofgOemkNXCF5bw', { title: 'history' })
    // deleteData('class', 'F6sq2aeUasxNrF41wjHa')
    // readData('class')
    return
})();