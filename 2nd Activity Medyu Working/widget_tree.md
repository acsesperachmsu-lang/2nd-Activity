MaterialApp
 └── ActivityScreen (StatefulWidget)
      └── Scaffold
          ├── AppBar (title: "Second Activity - Working Version")
          └── SingleChildScrollView
              └── Padding (16)
                  └── Column
                      ├── Row (Task 1)
                      │    ├── Text("Harry Potter")
                      │    ├── Text("The Hobbit")
                      │    └── Text("1984")
                      │
                      ├── Column (Task 2 - Borrow/Return)
                      │    ├── ElevatedButton("Borrow Harry Potter")
                      │    └── ElevatedButton("Return Book")
                      │
                      ├── Container (Task 3 - Notice)
                      │    └── Text("Books must be returned...")
                      │
                      ├── Card (Task 4 - Profile)
                      │    └── Row
                      │         ├── CircleAvatar
                      │         └── Column (name + role)
                      │
                      ├── Row (Task 5 - Expanded Books)
                      │    ├── Expanded → Container("The Hobbit")
                      │    └── Expanded → Container("1984")
                      │
                      ├── Row (Task 6 - Navigation Icons)
                      │    ├── Icon(Icons.home)
                      │    ├── Icon(Icons.book)
                      │    └── Icon(Icons.person)
                      │
                      ├── Stack (Task 7)
                      │    ├── Container (Background image)
                      │    └── Positioned → FloatingActionButton (Borrow)
                      │
                      ├── Container (Task 8 - Flexible Section)
                      │    └── Column
                      │         ├── Flexible → Container("Available count")
                      │         └── Flexible → Container("Borrowed count")
                      │
                      ├── Column (Task 9 - Chat bubbles)
                      │    ├── Align(left) → Container("Hello, can I borrow?")
                      │    └── Align(right) → Container("Yes, available.")
                      │
                      └── Column (Task 10 - Grid via Row + Column)
                           ├── Row
                           │    ├── GestureDetector → Text("Harry Potter")
                           │    └── GestureDetector → Text("The Hobbit")
                           └── Row
                                ├── GestureDetector → Text("1984")
                                └── Text("Reserved Book")
