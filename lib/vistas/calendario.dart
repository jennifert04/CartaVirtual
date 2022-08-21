import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';


class Calendario extends StatelessWidget{
  Calendario({Key? key}) : super(key: key);
  double screenHeight = 0.0;
  double screenWidth = 0.0;

  @override

  Widget build(BuildContext context){
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 176, 228),
      //appBar: AppBar(
        //title: Text("Reserva"),

      //),
      body: Center(
        child: Container(
          width: screenWidth * 0.9,
          height: screenHeight * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              TableCalendar(
              focusedDay: DateTime.now(), firstDay: DateTime.now(), lastDay: DateTime.now().add(Duration(days: 300)),

        
              ),
              Spacer(flex: 2),
              largeButton(
              (){
              showDialog(
                context: context, 
                builder: (BuildContext){
                  return AlertDialog(
                    title: Text("Reserva exitosa"),
                    content: Text("Reserva confirmada"),
                    actions: <Widget>[
                      largeButton((){
                        Navigator.of(context).pop();
                      },
                      Color.fromARGB(255, 62, 248, 161),"Exit"),
                    ],
                  );
                },
              );
            },
                        
            Color.fromARGB(255, 62, 248, 161),"Reserva para hoy"),
            Spacer(),   
            ]
            
            ),
          ),
      ) 
      

       
    );
  }
}