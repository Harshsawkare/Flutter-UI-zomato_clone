import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  bool isHistory = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        //history/favorite
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              GestureDetector(
                child: Text("history",
                  style: TextStyle(
                    color: isHistory ? Color.fromRGBO(230, 0, 0, 1) : Colors.grey,
                    fontSize: 22,
                  ),),
                onTap: (){
                  setState(() {
                    isHistory = true;
                  });
                },
              ),
              SizedBox(width: 20,),
              GestureDetector(
                child: Text("favorite",
                  style: TextStyle(
                    color: isHistory ? Colors.grey : Color.fromRGBO(230, 0, 0, 1),
                    fontSize: 22,
                  ),),
                onTap: (){
                  setState(() {
                    isHistory = false;
                  });
                },
              ),
            ],
          ),
        ),

        isHistory ?

        //history
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [

                //restaurant name
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))
                  ),
                  child: Row(
                    children: [

                      //image
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Icon(Icons.restaurant_rounded,color: Colors.grey.shade200,size: 30,),
                          ),
                        ),
                      ),

                      //info
                      Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
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

                                  //address
                                  Row(
                                    children: [
                                      Text("New State, XYZ",
                                        style: TextStyle(
                                            color: Colors.grey.shade800,
                                            fontSize: 16,
                                        ),),
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Expanded(child: Container()),

                                  //time
                                  Row(
                                    children: [
                                      Text("38 min",
                                        style: TextStyle(
                                          color: Colors.grey.shade800,
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

                      //delivered
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                                width: 70,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Center(child: Text("Delivery",style: TextStyle(color: Colors.grey.shade600,fontSize: 16),))
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.shade300,
                ),

                //menu
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [

                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color.fromRGBO(230, 0, 0, 1), width: 1.5),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_upward,color: Color.fromRGBO(230, 0, 0, 1),size: 16,),
                        ),
                      ),

                      Text("  1 x ",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                        ),),

                      Text("Pepperoni pizza 10''",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [

                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color.fromRGBO(230, 0, 0, 1), width: 1.5),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Center(
                          child: Icon(Icons.arrow_upward,color: Color.fromRGBO(230, 0, 0, 1),size: 16,),
                        ),
                      ),

                      Text("  1 x ",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),

                      Text("Chicken Soup",
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
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade300,
                  ),
                ),

                //date and price
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Text("17 Nov 2021 at 5:36PM",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      Expanded(child: Container()),
                      Text("Rs.592.00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),),
                      Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey.shade600,size: 16,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                  child: Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade300,
                  ),
                ),

                //rate and reorder
                Expanded(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [

                            //rate
                            Text("Rate",
                              style: TextStyle(
                                color: Color.fromRGBO(230, 0, 0, 1),
                                fontSize: 18,
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey,width: 1.5),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Text("1",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    Expanded(child: Container()),
                                    Icon(Icons.star, color: Colors.grey,size: 15,),
                                    Expanded(child: Container()),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey,width: 1.5),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Text("2",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    Expanded(child: Container()),
                                    Icon(Icons.star, color: Colors.grey,size: 15,),
                                    Expanded(child: Container()),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey,width: 1.5),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Text("3",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    Expanded(child: Container()),
                                    Icon(Icons.star, color: Colors.grey,size: 15,),
                                    Expanded(child: Container()),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey,width: 1.5),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Text("4",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    Expanded(child: Container()),
                                    Icon(Icons.star, color: Colors.grey,size: 15,),
                                    Expanded(child: Container()),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey,width: 1.5),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Text("5",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    Expanded(child: Container()),
                                    Icon(Icons.star, color: Colors.grey,size: 15,),
                                    Expanded(child: Container()),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Container()),

                            //reorder
                            Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(230, 0, 0, 0.65),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Icon(Icons.replay,color: Colors.white, size: 14,),
                                    Text(" Reorder",style: TextStyle(color: Colors.white,fontSize: 16),),
                                    Expanded(child: Container()),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        ):

        //favorite
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
              children: [

                //restaurant name
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))
                  ),
                  child: Row(
                    children: [

                      //image
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(
                            child: Icon(Icons.restaurant_rounded,color: Colors.grey.shade200,size: 30,),
                          ),
                        ),
                      ),

                      //info
                      Expanded(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                children: [
                                  Expanded(child: Container()),

                                  //restaurant name
                                  Row(
                                    children: [
                                      Text("Dive-in",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      Expanded(child: Container()),
                                      Text("Rs.188.00",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      SizedBox(width: 10,),
                                    ],
                                  ),
                                  SizedBox(height: 3,),

                                  //address
                                  Row(
                                    children: [
                                      Text("Clock Square, XYZ",
                                        style: TextStyle(
                                          color: Colors.grey.shade800,
                                          fontSize: 16,
                                        ),),
                                    ],
                                  ),
                                  Expanded(child: Container()),

                                ],
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.shade300,
                ),

                //delivered
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Row(
                    children: [
                      Container(
                          width: 70,
                          height: 25,
                          decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(5)
                          ),
                          child: Center(child: Text("Delivery",style: TextStyle(color: Colors.green,fontSize: 16),))
                      ),
                    ],
                  ),
                ),

                //items
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: [

                      Text("ITEMS",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [

                      Text("1 x Chilli Noodles",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                    ],
                  ),
                ),

                //ordered on
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  child: Row(
                    children: [

                      Text("ORDERED ON",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 14,
                        ),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [

                      Text("07 Sep 2021 at 11:22 AM",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 1,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.grey.shade300,
                  ),
                ),

                //rate and reorder
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10), bottomLeft: Radius.circular(10))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [

                            //you rated
                            Text("You rated",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Container(
                                width: 30,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(24, 73, 32, 1),
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Text("5",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    Expanded(child: Container()),
                                    Icon(Icons.star, color: Colors.white,size: 14,),
                                    Expanded(child: Container()),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(child: Container()),

                            //reorder
                            Container(
                                width: 110,
                                height: 30,
                                child: Row(
                                  children: [
                                    Expanded(child: Container()),
                                    Icon(Icons.replay,color: Color.fromRGBO(230, 0, 0, 1), size: 14,),
                                    Text(" Reorder Order",style: TextStyle(color: Color.fromRGBO(230, 0, 0, 1),fontSize: 16),),
                                    Expanded(child: Container()),
                                  ],
                                )
                            ),
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
