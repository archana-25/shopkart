import 'package:flutter/material.dart';
import 'package:untitled1/view/splash.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Card(),
    );
  }
}
class Card extends StatefulWidget {
  const Card({Key? key}) : super(key: key);

  @override
  State<Card> createState() => _CardState();
}

class _CardState extends State<Card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,


        title: Text("Welcome to payment page",
          style: TextStyle(
            color: Colors.black,
            //decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.wavy,
          ),),
        actions: const[
          Padding(padding: EdgeInsets.all(20),
            child: Icon(Icons.account_balance_wallet_outlined,
            color: Colors.black,
            size: 20,),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          SizedBox(height:14),
              Container(
                  padding: const EdgeInsets.all(24),
               decoration: BoxDecoration(
              color: Colors.yellow,
                 borderRadius: BorderRadius.circular(20),
                 boxShadow: [BoxShadow(
                     color: Color.fromARGB(100, 0, 62, 163),
                     offset: Offset(0, 10),
                     blurRadius: 14,
                     spreadRadius: 5)
                 ]

          ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,

                children:[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                  Text("Current Balance",style:TextStyle(fontSize: 30,
                  color:Colors.black,
                  fontWeight: FontWeight.bold)),
                  Image.network("https://cdn.vox-cdn.com/thumbor/UKSLdttYoIK2bv1gd231rqL4eiQ=/1400x788/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/13674554/Mastercard_logo.jpg",
                    fit: BoxFit.contain,
                    width: 50,),

                ],

              ),
                  SizedBox(height: 5),
                  Text("Rs 50,050.00"),
                  SizedBox(height: 30),
                  Text(" CARD NUMBER",
                  style:TextStyle(fontSize: 10,
                  color:Colors.grey,
                    fontWeight: FontWeight.bold
                  )),
                  SizedBox(height: 10),
                  Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:[
                    spaceText("4123"),
                      SizedBox(width: 10,),
                      spaceText("4123"),
                      SizedBox(width: 10,),
                      spaceText("4123"),
                      SizedBox(width: 10,),
                      spaceText("4123"),
                    ]
                  ),
                  SizedBox(height: 30),
                  Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(" CARD HOLDER NAME",
                          style:TextStyle(fontSize: 10,
                              color:Colors.grey,
                              fontWeight: FontWeight.bold

                          )
                      ),
                      Text(" EXPIRY DATE",
                          style:TextStyle(fontSize: 10,
                              color:Colors.grey,
                              fontWeight: FontWeight.bold
                          )),
                      Text(" CVV",
                          style:TextStyle(fontSize: 10,
                              color:Colors.grey,
                              fontWeight: FontWeight.bold
                          )),

                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      spaceText("Archana"),

                      spaceText("12/12"),

                      spaceText("466"),

                    ],
                  )


                  ],
              )


    ),

          ]),
        ),
    )












    );
  }
}

 Widget spaceText(var text )
{ return Text("$text",
  style: TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.bold

  ),

);

}

