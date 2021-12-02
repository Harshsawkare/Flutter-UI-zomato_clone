import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [

          //sorting chips
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 35,
              child: Stack(
                children: [

                  //all
                  Positioned.fill(
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [

                          //fastest delivery
                          SizedBox(width: 10,),
                          Container(
                              width: 100,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Fastest Delivery",style: TextStyle(color: Colors.black),))
                          ),

                          //ratings
                          SizedBox(width: 10,),
                          Container(
                              width: 85,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Ratings 4.0+",style: TextStyle(color: Colors.black,),))
                          ),

                          //offers
                          SizedBox(width: 10,),
                          Container(
                              width: 55,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Offers",style: TextStyle(color: Colors.black,),))
                          ),

                          //cuisines
                          SizedBox(width: 10,),
                          Container(
                              width: 70,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("cuisines",style: TextStyle(color: Colors.black,),))
                          ),

                          //pure veg
                          SizedBox(width: 10,),
                          Container(
                              width: 75,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Pure Veg",style: TextStyle(color: Colors.black,),))
                          ),

                          //takeaway
                          SizedBox(width: 10,),
                          Container(
                              width: 75,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Takeaway",style: TextStyle(color: Colors.black,),))
                          ),

                          //Max Safety
                          SizedBox(width: 10,),
                          Container(
                              width: 75,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Center(child: Text("Max Safety",style: TextStyle(color: Colors.black,),))
                          ),

                          //more
                          SizedBox(width: 10,),
                          Container(
                              width: 55,
                              height: 35,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Row(
                                children: [
                                  Expanded(child: Container()),
                                  Text(" More",style: TextStyle(color: Colors.black,),),
                                  SizedBox(width: 1,),
                                  Icon(Icons.arrow_drop_down_sharp, color: Colors.black, size: 15,),
                                  Expanded(child: Container()),
                                ],
                              )
                          ),
                          SizedBox(width: 85,),

                        ],
                      ),
                    ),
                  ),

                  //popular
                  Align(
                    alignment: Alignment(1,0),
                    child: Container(
                      width: 75,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black45, width: 1.5),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(8), bottomLeft: Radius.circular(8))
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          Icon(Icons.wifi_protected_setup_rounded, color: Colors.black,size: 15,),
                          Expanded(child: Container()),
                          Text("Popular",style: TextStyle(color: Colors.black),),
                          Expanded(child: Container()),
                        ],
                      )
                    ),
                  )

                ],
              ),
            ),
          ),

          //free delivery
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.pink.shade50,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Row(
                children: [

                  //delivery guy
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white
                      ),
                      child: Image.asset("images/deliveryguy.png", fit: BoxFit.cover,),
                    ),
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Text("Enjoy",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                            Text(" FREE DELIVERY ",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),),
                            Text("on every order!",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),),
                          ],
                        ),
                        SizedBox(height: 2,),
                        Row(
                          children: [

                            Text("Offer valid on selected restaurants.",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),),

                          ],
                        ),
                        Expanded(child: Container()),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),

          //60% off
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color.fromRGBO(5, 195, 221, 1), Color.fromRGBO(5, 195, 221, 0.3)]
                  ),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Text("60% OFF",
                          style: TextStyle(
                            color: Color.fromRGBO(11, 22, 73, 1),
                            fontSize: 50,
                            fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),

                    Row(
                      children: [
                        Text("inside",
                          style: TextStyle(
                              color: Color.fromRGBO(11, 22, 73, 1),
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                          ),),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 15),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 2,
                            color: Colors.lightBlue,
                          )
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Text("Great offers on yummy dishes ",
                          style: TextStyle(
                              color: Color.fromRGBO(11, 22, 73, 1),
                              fontSize: 16,
                          ),),
                        Icon(Icons.arrow_forward_rounded, color: Color.fromRGBO(11, 22, 73, 1), size: 14,)
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),

          //order again
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [

                Text("Order again",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                Expanded(child: Container()),
                Text("view history",
                  style: TextStyle(
                      color: Color.fromRGBO(230, 0, 0, 1),
                      fontSize: 14,
                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network("https://images.unsplash.com/photo-1571066811602-716837d681de?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGl6emF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,),
                  ),

                  Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [

                              //restaurant name
                              Row(
                                children: [
                                  Text("Harry's",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ],
                              ),
                              Expanded(child: Container()),

                              //time
                              Row(
                                children: [
                                  Icon(Icons.timelapse_rounded, color: Colors.green, size: 14,),
                                  Text("38 mins",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ],
                              ),
                              Expanded(child: Container()),
                              Expanded(child: Container()),

                              //offer
                              Row(
                                children: [
                                  Text("10% OFF up to Rs.40",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                    ),),
                                ],
                              ),
                              Expanded(child: Container()),
                              Expanded(child: Container()),

                            ],
                          ),
                        ),
                      )
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Row(
                children: [

                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network("https://images.unsplash.com/photo-1636907229111-a8ac768fe6c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDIzfHhqUFI0aGxrQkdBfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,),
                  ),

                  Expanded(
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [

                              //restaurant name
                              Row(
                                children: [
                                  Text("Dive-ine",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ],
                              ),
                              Expanded(child: Container()),

                              //time
                              Row(
                                children: [
                                  Icon(Icons.timelapse_rounded, color: Colors.green, size: 14,),
                                  Text("33 mins",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ],
                              ),
                              Expanded(child: Container()),
                              Expanded(child: Container()),

                              //offer
                              Row(
                                children: [
                                  Text("10% OFF up to Rs.40",
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 16,
                                    ),),
                                ],
                              ),
                              Expanded(child: Container()),
                              Expanded(child: Container()),

                            ],
                          ),
                        ),
                      )
                  ),

                ],
              ),
            ),
          ),

          //eat what makes you happy
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [

                Text("Eat what makes you happy",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              children: [
                Expanded(child: Container()),

                //soup
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://images.unsplash.com/photo-1604152135912-04a022e23696?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c291cHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                        width: 70,
                        height: 70,
                        fit: BoxFit.cover,),
                      ),
                      Expanded(child: Container()),
                      Text("Soup",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(child: Container()),

                //pizza
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://media.istockphoto.com/photos/neapolitan-pizza-on-black-background-picture-id1295797149?b=1&k=20&m=1295797149&s=170667a&w=0&h=pvcxQRi0VJvzSr6VW6UBH-TfBEamd_fM5dPpYzUGNg4=",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,),
                      ),
                      Expanded(child: Container()),
                      Text("Pizza",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(child: Container()),

                //bread
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://images.unsplash.com/photo-1590301157172-7ba48dd1c2b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGJyZWFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,),
                      ),
                      Expanded(child: Container()),
                      Text("Bread",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(child: Container()),

                //chicken
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://images.unsplash.com/photo-1598103442097-8b74394b95c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGNoaWNrZW58ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,),
                      ),
                      Expanded(child: Container()),
                      Text("Chicken",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(child: Container()),

              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Row(
              children: [
                Expanded(child: Container()),

                //noodles
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://images.unsplash.com/photo-1612927601601-6638404737ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bm9vZGxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,),
                      ),
                      Expanded(child: Container()),
                      Text("Noodles",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(child: Container()),

                //donuts
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://images.unsplash.com/photo-1583096114844-06ce5a5f2171?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZG9udXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,),
                      ),
                      Expanded(child: Container()),
                      Text("Donuts",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(child: Container()),

                //healthy
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://images.unsplash.com/photo-1607532941433-304659e8198a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsYWR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,),
                      ),
                      Expanded(child: Container()),
                      Text("Healty",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(child: Container()),

                //tacos
                Container(
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network("https://media.istockphoto.com/photos/row-of-mexican-street-tacos-on-slate-with-carne-asada-and-al-pastor-picture-id1250133101?b=1&k=20&m=1250133101&s=170667a&w=0&h=6ah6DA3ul7gSqhZzWA5cnwLWhanFIYgfU0iJvyLvTDo=",
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,),
                      ),
                      Expanded(child: Container()),
                      Text("Tacos",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Expanded(child: Container()),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Expanded(child: Container()),
                  Text("see more ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),),
                  Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 15,),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),

          //Restaurants around you
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [

                Text("Restaurants around you",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10) + EdgeInsets.only(bottom: 10),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [

                  //image
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    child: Stack(
                      children: [

                        //image
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                            child: Image.network("https://images.unsplash.com/photo-1613514785940-daed07799d9b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHRhY29zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                            width: MediaQuery.of(context).size.width,
                            height: 170,
                            fit: BoxFit.cover,),
                          ),
                        ),

                        //offer
                        Align(
                          alignment: Alignment(-1,0.8),
                          child: Container(
                            height: 35,
                            width: 80,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.blueAccent.shade100, Colors.blue]
                                  ),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8))
                            ),
                            child: Column(
                              children: [
                                Expanded(child: Container()),
                                Row(
                                  children: [
                                    Text("  10% OFF",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Text("  Up to Rs.40",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                      ),),
                                  ],
                                ),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        ),

                        //time
                        Align(
                          alignment: Alignment(0.9,0.8),
                          child: Container(
                            height: 22,
                            width: 70,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Row(
                              children: [
                                Expanded(child: Container()),
                                Icon(Icons.timelapse_rounded, color: Colors.green, size: 14,),
                                Text(" 38 mins",
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Expanded(child: Container()),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  //info
                  Container(
                    height: 115,
                    child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                          child: Row(
                            children: [

                              Text("Harry's",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold
                                ),),
                              Expanded(child: Container()),
                              Container(
                                width: 50,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(8)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Text("3.2 ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    Icon(Icons.star, color: Colors.white,size: 16,),
                                    Expanded(child: Container()),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10,right: 10,bottom: 5),
                          child: Row(
                            children: [

                              Text("Fast Food, All Course Meals",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                ),),
                              Expanded(child: Container()),
                              Text("Rs.300 for one",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                ),),
                            ],
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Container(
                            height: 1,
                            color: Colors.black12,
                          ),
                        ),

                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.indigo.shade300,
                                    shape: BoxShape.circle
                                  ),
                                  child: Icon(Icons.trending_up, color: Colors.white, size: 20,)
                              ),
                            ),
                            Text("100+ orders placed from here recently",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                              ),),
                          ],
                        ),
                      ],
                    ),
                  )

                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10) + EdgeInsets.only(bottom: 10),
            child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Column(
                  children: [

                    //image
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 170,
                      child: Stack(
                        children: [

                          //image
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                              child: Image.network("https://images.unsplash.com/photo-1551183053-bf91a1d81141?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHBhc3RhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
                                width: MediaQuery.of(context).size.width,
                                height: 170,
                                fit: BoxFit.cover,),
                            ),
                          ),

                          //offer
                          Align(
                            alignment: Alignment(-1,0.8),
                            child: Container(
                              height: 35,
                              width: 80,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.blueAccent.shade100, Colors.blue]
                                  ),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(8),bottomRight: Radius.circular(8))
                              ),
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                  Row(
                                    children: [
                                      Text("  10% OFF",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold
                                        ),),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Text("  Up to Rs.40",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                          ),

                          //time
                          Align(
                            alignment: Alignment(0.9,0.8),
                            child: Container(
                              height: 22,
                              width: 70,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: Row(
                                children: [
                                  Expanded(child: Container()),
                                  Icon(Icons.timelapse_rounded, color: Colors.green, size: 14,),
                                  Text(" 33 mins",
                                    style: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                    //info
                    Container(
                      height: 115,
                      child: Column(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                            child: Row(
                              children: [

                                Text("Dive-ine",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                  ),),
                                Expanded(child: Container()),
                                Container(
                                  width: 50,
                                  height: 25,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(child: Container()),
                                      Text("4.8 ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      Icon(Icons.star, color: Colors.white,size: 16,),
                                      Expanded(child: Container()),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 5,left: 10,right: 10,bottom: 5),
                            child: Row(
                              children: [

                                Text("All Course Meals",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),),
                                Expanded(child: Container()),
                                Text("Rs.250 for one",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),),
                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Container(
                              height: 1,
                              color: Colors.black12,
                            ),
                          ),

                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.indigo.shade300,
                                        shape: BoxShape.circle
                                    ),
                                    child: Icon(Icons.trending_up, color: Colors.white, size: 20,)
                                ),
                              ),
                              Text("100+ orders placed from here recently",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),),
                            ],
                          ),
                        ],
                      ),
                    )

                  ],
                )
            ),
          ),
        ],
      );
  }
}
