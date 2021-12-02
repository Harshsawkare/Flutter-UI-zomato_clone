import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:zomato_clone/account.dart';
import 'package:zomato_clone/delivery.dart';
import 'package:zomato_clone/history.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {

  late final ScrollController _scrollViewController;
  bool _showAppbar = true;
  bool isScrollingDown = false;
  bool isDelivery = true;
  var map = new Map();

  @override
  void initState() {
    super.initState();
    _scrollViewController = new ScrollController();
    _scrollViewController.addListener(() {
      if (_scrollViewController.position.userScrollDirection == ScrollDirection.reverse) {
        if (!isScrollingDown) {
          isScrollingDown = true;
          _showAppbar = false;
          setState(() {});
        }
      }

      if (_scrollViewController.position.userScrollDirection == ScrollDirection.forward) {
        if (isScrollingDown) {
          isScrollingDown = false;
          _showAppbar = true;
          setState(() {});
        }
      }
    });
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _scrollViewController.removeListener(() {});
    super.dispose();
  }

  void mapView(){
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        backgroundColor: Colors.white,
        builder: (context) => SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [

              //search location
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
                child: Row(
                  children: [
                    Text("Search location",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),)
                  ],
                ),
              ),

              //search bar
              AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                titleSpacing: 0,
                elevation: 0,
                title: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    elevation: 5,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(Icons.search_rounded, size: 23, color: Colors.pink,),
                          ),


                          Text("Search for your location",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),)
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              //current location
              Padding(
                padding: const EdgeInsets.only(left: 15,right: 15,bottom: 10),
                child: Container(
                  height: 250,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey,
                ),
              )
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: <Widget>[

            //location and account
            AnimatedContainer(
              height: _showAppbar ? 56.0 : 0.0,
              duration: Duration(milliseconds: 200),
              child: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                titleSpacing: 0,
                elevation: 0,

                //location
                title: GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [

                        Icon(Icons.location_on_outlined, size: 35 , color: Colors.pink,),

                        Container(
                          width: 200,
                          child: Column(
                            children: [

                              Row(
                                children: [
                                  Text("Home ",
                                    style: TextStyle(
                                        color: Colors.pink,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  Icon(Icons.keyboard_arrow_down, size: 18 , color: Colors.pink,),
                                ],
                              ),

                              Row(
                                children: [
                                  Text("34 New State, XYZ",
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
                    ),
                  ),

                  onTap: (){
                    mapView();
                  },
                ),

                //account
                actions: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      child: Container(
                        width: 40,
                        child: Stack(
                          children: [

                            Positioned.fill(
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.pink
                                ),
                                child: Center(
                                  child: Text("H",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),),
                                ),
                              ),
                            ),

                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                width: 15,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.pink,
                                    border: Border.all(color: Colors.white, width: 2)
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      onTap: (){
                        Navigator.push(
                            context, MaterialPageRoute(
                            builder: (context) => Account()
                          )
                        );
                      },
                    ),
                  )
                ],
              ),
            ),

            //search
            AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              titleSpacing: 0,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  elevation: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(Icons.search_rounded, size: 23, color: Colors.pink,),
                        ),

                        isDelivery ?
                        Text("Restaurant name, cuisine, or a dish...",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),):
                        Text("Search by restaurant or dish...",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),)

                      ],
                    ),
                  ),
                ),
              ),
            ),

            //body
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                controller: _scrollViewController,
                child: isDelivery ? Delivery() : History()
              ),
            ),

          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        child: Row(
          children: [

            //delivery
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    isDelivery = true;
                  });
                },
                child: Column(
                  children: [

                    Container(height: 2, color: isDelivery ? Color.fromRGBO(230, 0, 0, 1) : Colors.white,),

                    Container(
                      child: Center(
                        child: Column(
                          children: [
                            Icon(Icons.delivery_dining_rounded, size: 30, color: isDelivery ? Color.fromRGBO(230, 0, 0, 1) : Colors.grey,),
                            Text("Delivery",
                              style: TextStyle(
                                color: isDelivery ? Color.fromRGBO(230, 0, 0, 1) : Colors.grey,
                                fontSize: 14,
                              ),),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
            ),

            //history
            Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    isDelivery = false;
                  });
                },
                child: Column(
                    children: [

                      Container(height: 2, color: isDelivery? Colors.white : Color.fromRGBO(230, 0, 0, 1),),

                      Container(
                        child: Center(
                          child: Column(
                            children: [
                              Icon(Icons.article_outlined, size: 30, color: isDelivery ? Colors.grey : Color.fromRGBO(230, 0, 0, 1),),
                              Text("History",
                                style: TextStyle(
                                  color: isDelivery ? Colors.grey : Color.fromRGBO(230, 0, 0, 1),
                                  fontSize: 14,
                                ),),
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
