# <p align="center">🇷🇴: Simulati un sistem de management al utilizatorilor prin 3 functionalitati principale: </p> 



## 1. Inregistrarea unor utilizatori noi

- Presupune verificarea existentei unui utilizator cu acelasi nume, caz in care   inregistrarea nu se efectueaza si se afiseaza un mesaj correspunzator
- Pentru utilizatorii noi, se solicita detalii precum: adresa email, parola, etc. cu validari de date specifice
- Inregistrarea unui utilizator nou presupune adaugarea intr-un registru .csv a detaliilor de inregistrare, autogenerarea unui ID unic, crearea unui director "home"

## 2. Simularea autentificarii utilizatorilor + logout
- Aceasta optiune cauta numele de utilizator in registru, si daca exista, solicita parola de access. In cazul in care parola coincide, terminalul navigheaza catre directorul "home" al utilizatorului respectiv iar in registru se actualizeaza un camp "last_login" specific fiecarui utilizator. De asemenea, in contextul de executie parinte, unui variabile array "logged_in_users" se adauga numele de utilizator
- Functionalitatea de logout presupune stergerea utilizatorului din lista de utilizatori autentificati

## 3. Generarea de rapoarte / utilizatori
- Aceasta functionalitate presupune realizarea pentru un nume de utilizator al unui raport care contorizeaza numarul de fisiere, numarul de directoare si dimensiunea pe disc a fisierelor asociate acelui utilizator. Raportul se genereaza asincron si se gaseste in directorul "home" al fiecarui utilizator.

# <p align="center">🇬🇧: Simulate a user management system with three main functionalities: </p>

## 1. Registering New Users
- This involves checking for the existence of a user with the same name. If such a user exists, registration does not proceed, and a corresponding message is displayed.
- For new users, details such as email address, password, etc., are requested with specific data validations.
- Registering a new user involves adding the registration details to a .csv register, auto-generating a unique ID, and creating a "home" directory.
  
## 2. Simulating User Authentication and Logout
- This option searches for the username in the register, and if it exists, requests the access password. If the password matches, the terminal navigates to the user's "home" directory, and the "last_login" field in the register is updated for that user. Additionally, in the parent execution context, the username is added to a "logged_in_users" array variable.
- The logout functionality involves removing the user from the list of authenticated users.

## 3. Generating User Reports
- This functionality involves creating a report for a username that counts the number of files, the number of directories, and the disk size of the files associated with that user. The report is generated asynchronously and is located in the user's "home" directory.

