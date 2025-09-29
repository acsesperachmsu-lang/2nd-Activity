import 'package:flutter/material.dart';
import '../services/book_service.dart';
import '../models/book.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  void _borrowBook(Book book) {
    setState(() {
      BookService.borrowBook(book);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("${book.title} borrowed!")),
    );
  }

  void _returnBook(Book book) {
    setState(() {
      BookService.returnBook(book);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("${book.title} returned!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    final books = BookService.books;
    final borrowed = BookService.borrowedBooks;

    return Scaffold(
      appBar: AppBar(title: const Text("Second Activity - Working Version")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 1. Row with 3 Text Widgets
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Harry Potter"),
                Text("The Hobbit"),
                Text("1984"),
              ],
            ),
            const SizedBox(height: 20),

            // 2. Column with 2 Buttons (Borrow/Return first book for demo)
            Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => _borrowBook(books[0]),
                    child: const Text("Borrow Harry Potter"),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: borrowed.isNotEmpty
                        ? () => _returnBook(borrowed[0])
                        : null,
                    child: const Text("Return Book"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 3. Container with padding/margin/bg
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.yellow[100],
              child: const Text("📢 Notice: Books must be returned in 7 days."),
            ),
            const SizedBox(height: 20),

            // 4. Profile Card
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.cyan,
                      child: Icon(Icons.person, color: Colors.white, size: 30),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Librarian: Ana Santos",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text("Head Librarian"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 5. Expanded in Row (two books)
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => _borrowBook(books[1]),
                    child: Container(
                      height: 80,
                      color: Colors.cyan[100],
                      child: Center(child: Text(books[1].title)),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _borrowBook(books[2]),
                    child: Container(
                      height: 80,
                      color: Colors.cyan[300],
                      child: Center(child: Text(books[2].title)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 6. Row Navigation Bar (demo only)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.home, color: Colors.cyan),
                Icon(Icons.book, color: Colors.cyan),
                Icon(Icons.person, color: Colors.cyan),
              ],
            ),
            const SizedBox(height: 20),

            // 7. Stack with background image + floating button
            Stack(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: NetworkImage("https://picsum.photos/400/200"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: FloatingActionButton(
                    onPressed: () => _borrowBook(books[0]),
                    backgroundColor: Colors.cyan,
                    child: const Icon(Icons.add),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 8. Flexible inside Column
            Container(
              height: 200,
              color: Colors.grey[200],
              child: Column(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.cyan,
                      child: Center(
                        child: Text(
                            "Available: ${books.where((b) => b.isAvailable).length}"),
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.cyan[200],
                      child: Center(
                        child: Text("Borrowed: ${borrowed.length}"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 9. Chat Bubble UI (static demo, could be extended with TextField)
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text("Hello, can I borrow The Hobbit?"),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text("Yes, The Hobbit is available."),
              ),
            ),
            const SizedBox(height: 20),

            // 10. Row + Column Grid
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => _borrowBook(books[0]),
                      child: const Text("📖 Harry Potter"),
                    ),
                    GestureDetector(
                      onTap: () => _borrowBook(books[1]),
                      child: const Text("📖 The Hobbit"),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () => _borrowBook(books[2]),
                      child: const Text("📖 1984"),
                    ),
                    const Text("📖 Reserved Book"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
