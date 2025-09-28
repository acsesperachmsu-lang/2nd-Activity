import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Activity - Library Layouts")),
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

            // 2. Column with 2 Buttons
            Center(
              child: Column(
                children: [
                  ElevatedButton(onPressed: () {}, child: const Text("Borrow")),
                  const SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: const Text("Return")),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 3. Container with padding/margin/bg
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.yellow[100],
              child: const Text(
                  "📢 Library Notice: Books must be returned in 7 days."),
            ),
            const SizedBox(height: 20),

            // 4. Profile Card Layout
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

            // 5. Expanded in Row
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.cyan[100],
                    child: const Center(child: Text("Harry Potter")),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Container(
                    height: 80,
                    color: Colors.cyan[300],
                    child: const Center(child: Text("The Hobbit")),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // 6. Navigation Bar using Row
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
                    onPressed: () {},
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
                        child:
                            const Center(child: Text("Harry Potter Section"))),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                        color: Colors.cyan[200],
                        child: const Center(child: Text("1984 Section"))),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // 9. Chat Bubble UI
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

            // 10. Grid-like Layout using Row + Column
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("📖 Harry Potter"),
                    Text("📖 The Hobbit"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text("📖 1984"),
                    Text("📖 Reserved Book"),
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
