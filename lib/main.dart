import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: const Text('Students List App')),
            body: ListView(
              children: const [
                StudentItem(image: 'assets/images/woman3.jpg', id: '700', name: 'Lana', major: 'IT', rate: 2),
                StudentItem(image: 'assets/images/man1.jpg', id: '123', name: 'Ali', major: 'IT', rate: 3),
                StudentItem(image: 'assets/images/woman1.jpg', id: '321', name: 'Aya', major: 'CS', rate: 4),
                StudentItem(image: 'assets/images/woman2.jpg', id: '200', name: 'Saly', major: 'CE', rate: 5)

              ],
            )
        )
    );
  }
}

class StudentItem extends StatelessWidget {
  final String image;
  final String id;
  final String name;
  final String major;
  final double rate;


  const StudentItem({super.key, required this.image, required this.id, required this.name, required this.major, required this.rate});

  @override
  Widget build(BuildContext context){

    return Container(
      padding: const EdgeInsets.all(3),
        height: 120,
        child: Card(
          child: Row(
            children: [
              Image.asset(image),
              Expanded(child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(name, style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),),
                    Text(id),
                    Text(major),
                    RatingBar.builder(
                      wrapAlignment: WrapAlignment.start,
                      itemSize: 15,
                      initialRating: rate,
                      direction: Axis.horizontal,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {

                      },)
                  ],
                ),
              ))
            ],
          ),
      )
    );
  }
}
