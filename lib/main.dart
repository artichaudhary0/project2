import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project",
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          color: Color(0xE5E5E5),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Task",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Color.fromRGBO(7, 4, 23, 1),
                        ),
                      ),
                      Icon(
                        Icons.more_horiz_outlined,
                        color: Color.fromRGBO(130, 130, 130, 1),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "00:32:10",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 25,
                                    color: Color.fromRGBO(7, 4, 23, 1)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle_outlined,
                                  color: Color.fromRGBO(112, 18, 206, 1),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Rasion Project",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17,
                                      color: Color.fromRGBO(7, 4, 23, 1)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                CardView(
                  workName: "UI Design",
                  buttonName1: "work",
                  textColor1: Color.fromRGBO(253, 91, 113, 1),
                  time: "00:42:21",
                  iconName: Icon(Icons.computer),
                  buttonName2: 'Rasion',
                  buttonColor1: Color.fromRGBO(255, 239, 241, 1),
                  buttonColor2: Color.fromRGBO(245, 238, 252, 1),
                  textColor2: Color.fromRGBO(155, 81, 224, 1),
                  circleAvatorColor: Color.fromRGBO(155, 81, 224, 1),
                ),
                CardView(
                  workName: "100x Sit-Up",
                  buttonName1: "Personal",
                  textColor1: Color.fromRGBO(130, 130, 130, 1),
                  time: "00:14:06",
                  iconName: Icon(Icons.sports_gymnastics),
                  buttonName2: 'Workout',
                  buttonColor1: Color.fromRGBO(242, 242, 242, 1),
                  buttonColor2: Color.fromRGBO(254, 245, 237, 1),
                  textColor2: Color.fromRGBO(255, 166, 86, 1),
                  circleAvatorColor: Color.fromRGBO(255, 166, 86, 1),
                ),
                CardView(
                  workName: 'Learn HTML & CSS',
                  buttonName1: "Personal",
                  textColor1: Color.fromRGBO(130, 130, 130, 1),
                  time: "00:24:52",
                  iconName: Icon(Icons.code),
                  buttonName2: 'Coding',
                  buttonColor1: Color.fromRGBO(242, 242, 242, 1),
                  buttonColor2: Color.fromRGBO(255, 239, 241, 1),
                  textColor2: Color.fromRGBO(253, 91, 113, 1),
                  circleAvatorColor: Color.fromRGBO(253, 91, 113, 1),
                ),
                CardView(
                  workName: "Read 10 pages of book",
                  buttonName1: "Personal",
                  textColor1: Color.fromRGBO(130, 130, 130, 1),
                  time: "00:21:09",
                  iconName: Icon(Icons.menu_book_sharp),
                  buttonName2: 'Reading',
                  buttonColor1: Color.fromRGBO(242, 242, 242, 1),
                  buttonColor2: Color.fromRGBO(230, 252, 244, 1),
                  textColor2: Color.fromRGBO(7, 224, 146, 1),
                  circleAvatorColor: Color.fromRGBO(7, 224, 146, 1),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.access_time,
                        ),
                        tooltip: "Total Time",
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle,
                        ),
                        tooltip: "Add Task",
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.pie_chart_outline_outlined,
                        ),
                        tooltip: "Progress",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CardView(
      {required String workName,
      required String buttonName1,
      required String buttonName2,
      required Color textColor1,
      required Color textColor2,
      required String time,
      required Icon iconName,
      required Color buttonColor1,
      required Color buttonColor2,
      required Color circleAvatorColor}) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: circleAvatorColor,
                  child: IconButton(
                    icon: iconName,
                    onPressed: () {},
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        workName,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              buttonName1,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: textColor1,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(buttonColor1),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              buttonName2,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: textColor2,
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                buttonColor2,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        time,
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(79, 79, 79, 1),
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.play_arrow,
                        color: Color.fromRGBO(130, 130, 130, 1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
