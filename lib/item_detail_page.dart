import 'package:flutter/material.dart';

class ItemDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ItemDetailsPageState();
}

class _ItemDetailsPageState extends State<ItemDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       elevation: 0.0,
       backgroundColor: Theme.of(context).primaryColor,
       leading: GestureDetector(
         onTap: () {
           Navigator.pop(context);
         },
         child: Icon(
           Icons.arrow_back,
           color: Colors.white,
         ),
       ),
       actions: [
         GestureDetector(
           onTap: () {
             Navigator.pop(context);
           },
           child: Container(
             margin: EdgeInsets.only(right: 10),
             child: Icon(
               Icons.notifications_rounded,
               color: Colors.cyanAccent,
             ),
           ),
         ),
       ],
     ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(left: 30, bottom: 30),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Image.asset("images/dr_details.png"),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text(
                              "Dr. MTHOKOZISI MGWAYI",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              "Heart Surgery",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            child: Text(
                              "Rating: 4.5",
                              style: TextStyle(
                                color: Colors.yellow,
                                fontSize: 15,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "November 2022",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 25,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 20, right: 20),
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  demoDates("Mon", "21", true),
                  demoDates("Tue", "22", true),
                  demoDates("Wed", "23", true),
                  demoDates("Thu", "24", true),
                  demoDates("Fri", "25", true),
                  demoDates("Sat", "26", false),
                  demoDates("Sun", "27", false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 30),
              child: Text(
                "Evening",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 25,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.6,
                children: [
                  doctorsTimings("08:00 AM", true),
                  doctorsTimings("08:30 AM", true),
                  doctorsTimings("09:00 AM", true),
                  doctorsTimings("09:30 AM", true),
                  doctorsTimings("10:30 AM", true),
                  doctorsTimings("11:00 AM", true),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 2.6,
                children: [
                  doctorsTimings("08:30 AM", true),
                  doctorsTimings("09:30 AM", true),
                  doctorsTimings("09:30 AM", true),
                  doctorsTimings("09:30 AM", true),
                  doctorsTimings("09:30 AM", true),
                  doctorsTimings("09:30 AM", true),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 50,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(5)
              ),
              child: Text(
                'Make an Appointment',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  doctorsTimings(String time, bool isSelected){
    return isSelected ? Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
        color: Colors.cyanAccent,
        borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
            Icons.access_time,
              color: Colors.white,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Text(
              time,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'Roboto',
              ),
            ),
          )
        ],
      ),
    ) : Container(
      margin: EdgeInsets.only(left: 20, top: 10),
      decoration: BoxDecoration(
          color: Colors.brown,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Icon(
              Icons.access_time,
              color: Colors.black,
              size: 18,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 2),
            child: Text(
              time,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'Roboto',
              ),
            ),
          )
        ],
      ),
    );
  }

  demoDates(String day, String date, bool isSelected){
    return isSelected ? Container(
      width: 70,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Text(
             day,
             style: TextStyle(
               color: Colors.white,
               fontSize: 20,
               fontFamily: 'Roboto',
               fontWeight: FontWeight.w500,
             ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            child: Text(
              date,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    ) : Container(
      width: 70,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.lime,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Text(
              day,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(7),
            child: Text(
              date,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
