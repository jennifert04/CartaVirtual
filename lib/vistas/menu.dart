import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/wcWidgets.dart';

import 'package:flutter_application_1/vistas/domicilio.dart';

class Menu extends StatelessWidget{
  Menu({Key? key }):super(key: key);
  double screenHeight = 0.0;
  double screenWidth = 0.0;
  
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 176, 228),
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
              Spacer(flex: 2),

              Row(
                children: [
                  Spacer(flex: 1),
                  titleText("MENÚ"),
                  Spacer(),
                ],
              ),
              Spacer(flex: 2),
              Row(
                
                children: [
                  
                    
                    Spacer(flex:1),  
                  Column(
                    children: [
                      Image(image: AssetImage("lib/assets/sopa-caliente.png"),height: 100, width: 200),
                      subTitleText("SOPAS"),
                      menuText("  Crema de zanahoria              16.000 pesos    "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("Crema de tomate                  16.000 pesos   "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("  Crema de espinaca                 16.000 pesos  "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("Sopa de vegetales                 16.000 pesos   "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                    ],      

                  ),
                  Spacer(),
                  Column(
                    children:[
                      Image(image: AssetImage("lib/assets/ensalada (1).png"),height: 100, width: 200),
                      subTitleText("ENSALADAS"),
                      menuText("Ensalada griega                     23.000 pesos "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("Ensalada verde                       18.000 pesos "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("Ensalada de aguacate             19.500 pesos "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("Ensalada 7 colores                  17.800 pesos "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      
                    ],
                  ),
                  Spacer(),
                  Column(
                    children:[
                      Image(image: AssetImage("lib/assets/ensalada.png"),height: 100, width: 200),
                      subTitleText("PLATOS FUERTES"),
                      menuText("Burrito de lentejas                         16.500 pesos "),
                      
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("Pizza de rúgula                               27.400 pesos "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("Hamburguesa de artemisa           22.700 pesos "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),
                      menuText("Bowl mexicano                             18.200 pesos "),
                      largeButton(
                      (){},
                      Color.fromARGB(255, 62, 248, 161),
                          "Añadir al carrito",
                      ),

                    ],
                  ),
                  Spacer(),
                ],
                
              
              ),
              Spacer(flex: 3),
              /*largeButton(
                      (){
                          showDialog(
                            context: context, 
                            builder: (BuildContext){
                              return AlertDialog(
                                title: Text("Pedido exitosa"),
                                content: Text("Pedido confirmado"),
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
                  
              Color.fromARGB(255, 62, 248, 161),"Pedir"),
              Spacer(),*/
              largeButton(
              (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Domicilio();
                      },
                    ),
                  ); 
              },
               Color.fromARGB(255, 62, 248, 161),
              "Pedir domicilio",
              ),
              Spacer(),

            ]
            
            
          ),
          
        ),
      ),  
    );
  }
}