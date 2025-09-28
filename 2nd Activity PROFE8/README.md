📚 Second Activity – Flutter Layout Practice (Library Themed)
This project is my Second Activity in Flutter. The goal was to create a small app that demonstrates 10 different layout tasks.
I used a library theme to make it consistent with my first activity (book borrowing app).


🗂️ Project Structure
lib/
├── main.dart # Entry point
└── screens/
└── activity_screen.dart # Contains all 10 tasks

I kept the structure simple since this activity only needed one main screen. All tasks are inside ActivityScreen.


📋 Tasks and Where They Appear
Row with 3 Text Widgets

Shows three book titles: Harry Potter, The Hobbit, 1984.
Column with 2 Buttons

Two buttons placed in the center: “Borrow” and “Return”.
Container with padding, margin, and background color

A yellow box with a library notice.
Profile Card Layout

A Card with a Row (profile picture + name) and a Column (details).
Responsive layout with Expanded

A Row with two containers (Harry Potter, The Hobbit) that share equal screen width.
Navigation Bar using Row

Icons for Home, Books, and Profile spaced evenly.
Stack with background image + floating button

A placeholder background image with a floating add button on top.
Flexible inside a Column

A container that splits into two parts: “Harry Potter Section” and “1984 Section”, resizing with screen orientation.
Chat Bubble UI

Two containers styled like messages between a user and the librarian.
Row + Column Grid
A simple grid of four books (Harry Potter, The Hobbit, 1984, Reserved Book) created using only Rows and Columns.

🚀 How to Run
Open the project in FlutLab or your Flutter IDE.
Run the app:

flutter pub get
flutter run

Scroll through the screen to see each of the 10 tasks.
