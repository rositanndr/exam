import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget> [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 320,
                color: Color.fromRGBO(80, 194, 201, 1),
              ),
            ),
            Positioned(
              top: -20,
              left: -100,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 225, 215, 50),
                  shape: BoxShape.circle
                ),
              ),
            ),
             Positioned(
              top: -90,
              left: -10,
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(143, 225, 215, 50),
                  shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 140,
              child: Image.asset('images/gb4.png'),
              width: 100,
              height: 100,
            ),
           Positioned(
              top: 260,
              left: 80,
              child: Center(
                child: Text(
                  'Welcome Jaegar Goyani',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),
                ),
              ),
            ),
            Positioned(
              top: 350,
              right: 30,
              child: Text(
                'Good afternoon',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
            Positioned(
              top: 390,
              left: 110,
              child: Image.asset('images/gb5.png'),
            ),

            Stack(
              children: [Positioned(
              bottom: 1,
            left: 40,
            right: 30,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Daily task'),
                        Icon(Icons.add),
                      ],
                    ),
                    SizedBox(height: 20),
                    TaskItem(
                      description: 'Learning Programming by 12PM',
                      isChecked: true,
                    ),
                    TaskItem(
                      description: 'Learn how to cook by 1PM',
                      isChecked: false,
                    ),
                    TaskItem(
                      description: 'Learn how to play at 2PM',
                      isChecked: false,
                    ),
                    TaskItem(
                      description: 'Have lunch at 4PM',
                      isChecked: false,
                    ),
                    TaskItem(
                      description: 'Going to travel 6PM',
                      isChecked: false,
                    ),
                  ],
                ),
              ),
            ),
          ), 
          Positioned(
              top: 500,
              left: 20,
              child: Text(
                'Task list',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
class TaskItem extends StatelessWidget {
  final String description;
  final bool isChecked;

  TaskItem({required this.description, required this.isChecked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: isChecked ? Color(0xff50C2C9) : Color.fromRGBO(255, 255, 255, 1),
            border: Border.all(color: Colors.black),
          ),
        ),
        SizedBox(width: 10),
        Text(description),
      ],
    );
  }
}