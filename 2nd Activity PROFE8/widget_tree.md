MaterialApp
 └── ActivityScreen (StatelessWidget)
      └── Scaffold
          ├── AppBar (title: "Second Activity")
          └── SingleChildScrollView
              └── Padding (all: 16)
                  └── Column
                      ├── Row (Task 1)
                      │    ├── Text("Harry Potter")
                      │    ├── Text("The Hobbit")
                      │    └── Text("1984")
                      │
                      ├── Column (Task 2)
                      │    ├── ElevatedButton("Borrow")
                      │    └── ElevatedButton("Return")
                      │
                      ├── Container (Task 3)
                      │    └── Text("Notice...")
                      │
                      ├── Card (Task 4 - Profile)
                      │    └── Padding
                      │         └── Row
                      │              ├── CircleAvatar (Icon: person)
                      │              └── Column
                      │                   ├── Text("Librarian: Ana Santos")
                      │                   └── Text("Head Librarian")
                      │
                      ├── Row (Task 5 - Expanded)
                      │    ├── Expanded → Container("Harry Potter")
                      │    └── Expanded → Container("The Hobbit")
                      │
                      ├── Row (Task 6 - Navigation bar)
                      │    ├── Icon(Icons.home)
                      │    ├── Icon(Icons.book)
                      │    └── Icon(Icons.person)
                      │
                      ├── Stack (Task 7)
                      │    ├── Container (Background image)
                      │    └── Positioned → FloatingActionButton
                      │
                      ├── Container (Task 8 - Flexible Column)
                      │    └── Column
                      │         ├── Flexible → Container("Harry Potter Section")
                      │         └── Flexible → Container("1984 Section")
                      │
                      ├── Column (Task 9 - Chat bubbles)
                      │    ├── Align(left) → Container("Hello, can I borrow The Hobbit?")
                      │    └── Align(right) → Container("Yes, The Hobbit is available.")
                      │
                      └── Column (Task 10 - Grid with Row + Column)
                           ├── Row
                           │    ├── Text("Harry Potter")
                           │    └── Text("The Hobbit")
                           └── Row
                                ├── Text("1984")
                                └── Text("Reserved Book")
