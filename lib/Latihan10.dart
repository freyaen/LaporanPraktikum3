import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "For You", // Tab label
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    "Following", // Tab label
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              // For You Tab
              ListView.builder(
                itemCount: 5, // Adjusted item count
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      border: Border.all(), // Add border decoration
                    ),
                    child: ListTile(
                      leading: const FlutterLogo(size: 24), // Flutter logo
                      title: Text("Data ke $index"), // Text data
                    ),
                  );
                },
              ),
              // Following Tab
              GridView.count(
                crossAxisCount: 2, // 2 columns
                children: List.generate(4, (index) {
                  List<String> owlImages = [
                    "https://images.unsplash.com/photo-1527061011665-3652c757a4d4?q=80&w=1886&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://images.unsplash.com/photo-1470509037663-253afd7f0f51?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://images.unsplash.com/photo-1502977249166-824b3a8a4d6d?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "https://images.unsplash.com/photo-1588477000993-460d2257f88a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  ];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(owlImages[index]), // Owl image
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
