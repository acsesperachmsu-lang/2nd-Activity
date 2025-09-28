📚 README.md – Second Activity (Upgraded Working Version)
This is the upgraded version of my Second Activity in Flutter.
It keeps the 10 required layout tasks, but I also added simple logic so the app works as a mini library borrowing app (without a database).


🗂️ Project Structure
 
lib/
├── main.dart # Entry point
├── models/
│ └── book.dart # Book model
├── services/
│ └── book_service.dart # Book logic (borrow/return)
└── screens/
└── activity_screen.dart # Main screen with all 10 tasks

models/ → contains data models (Book).
services/ → app logic (BookService manages borrowing/returning).
screens/ → UI layouts.
main.dart → starts the app.

📋 Tasks and Where They Appear
Row with 3 Text Widgets

Shows the book titles Harry Potter, The Hobbit, 1984.
Column with 2 Buttons

Buttons for borrowing and returning books. These actually change the state.
Container with padding, margin, and background color

Displays a library notice about returning books.
Profile Card Layout

A card showing librarian profile info.
Expanded Row

Two containers showing book titles. Tapping on them borrows the book.
Navigation Bar with Row

Icons for Home, Books, Profile spaced evenly.
Stack with background image + floating button

Background image with a FloatingActionButton that borrows a book.
Flexible inside Column

Displays counts of Available Books vs Borrowed Books, resizing dynamically.
Chat Bubble UI

Simulates a conversation between student and librarian.
Row + Column Grid
Shows a small book grid where tapping a title borrows it.

🎨 Why Upgrade?
The static version was enough for checking, but I wanted to make it interactive.
Adding state management (setState with BookService) makes it behave more like a real borrowing system while still satisfying the layout tasks.


🚀 How to Run
Open the project in FlutLab or your IDE.
Run:

 
flutter pub get
flutter run

Borrow a book → it becomes unavailable.
Return a book → it moves back to available.
