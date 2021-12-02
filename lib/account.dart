import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),

        elevation: 0,

        backgroundColor: Colors.white,

        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Container(
            child: Row(
              children: [

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [

                        Row(
                          children: [
                            Text("Name",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 26,
                                fontWeight: FontWeight.bold
                              ),),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: [
                              Text("name@xyz.com",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),),
                            ],
                          ),
                        ),

                        Row(
                          children: [
                            Text("View activity",
                              style: TextStyle(
                                color: Colors.pink,
                                fontSize: 14,
                              ),),
                            Icon(Icons.arrow_right_outlined, color: Colors.pink, size: 16,)
                          ],
                        ),
                      ],
                    ),
                  )
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.pink,
                    ),
                    child: Center(
                      child: Text("H",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [

            //bookmarks, notifications, settings, payments
            Container(
              height: 80,
              child: Column(
                children: [
                  Container(height: 1, width: MediaQuery.of(context).size.width ,color: Colors.black12,),
                  Expanded(
                    child: Container(
                      child: Row(
                        children: [

                          //bookmarks
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                  Icon(Icons.bookmark_border_rounded, color: Colors.black, size: 25,),
                                  Text("Bookmarks",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                          ),

                          //notifications
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                  Icon(Icons.notifications_none_rounded, color: Colors.black, size: 25,),
                                  Text("Notifications",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                          ),

                          //settings
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                  Icon(Icons.settings, color: Colors.black, size: 25,),
                                  Text("Settings",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                          ),

                          //payments
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Expanded(child: Container()),
                                  Icon(Icons.payment_rounded, color: Colors.black, size: 25,),
                                  Text("Payments",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                    ),),
                                  Expanded(child: Container()),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Container(height: 1, width: MediaQuery.of(context).size.width ,color: Colors.black12,),
                ],
              ),
            ),

            //ratings
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200
                      ),
                      child: Center(
                        child: Icon(Icons.star_border_purple500_rounded, color: Colors.black,size: 25,),
                      ),
                    ),

                    Text("    Your Rating",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),

                    Expanded(child: Container()),

                    Container(
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Expanded(child: Container()),
                          Text("5.0",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),),
                          Expanded(child: Container()),
                          Icon(Icons.star, color: Colors.orangeAccent,size: 18,),
                          Expanded(child: Container()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(height: 1, width: MediaQuery.of(context).size.width ,color: Colors.black12,),

            //food orders
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: [
                  Text("FOOD ORDERS",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),),
                ],
              ),
            ),

            //your orders
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_bag_outlined, color: Colors.black,size: 20,),
                      ),
                    ),

                    Text("    Your Orders",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                  ],
                ),
              ),
            ),

            //fav orders
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                      child: Center(
                        child: Icon(Icons.favorite_border_rounded, color: Colors.black,size: 20,),
                      ),
                    ),

                    Text("    Favorite Orders",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                  ],
                ),
              ),
            ),

            //address book
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                      child: Center(
                        child: Icon(Icons.menu_book_rounded, color: Colors.black,size: 20,),
                      ),
                    ),

                    Text("    Address Book",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                  ],
                ),
              ),
            ),

            //online ordering help
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                      child: Center(
                        child: Icon(Icons.messenger_outline, color: Colors.black,size: 20,),
                      ),
                    ),

                    Text("    Online Ordering Help",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                  ],
                ),
              ),
            ),

            //about
            Container(height: 1, width: MediaQuery.of(context).size.width ,color: Colors.black12,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200
                      ),
                      child: Center(
                        child: Icon(Icons.info_outline_rounded, color: Colors.black,size: 20,),
                      ),
                    ),

                    Text("    About",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                  ],
                ),
              ),
            ),
            Container(height: 1, width: MediaQuery.of(context).size.width ,color: Colors.black12,),

            //send feedback
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Text("Send Feedback",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                  ],
                ),
              ),
            ),

            //rate us on play store
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 20,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Text("Rate us on Play Store",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
                  ],
                ),
              ),
            ),

            //logout
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                    Text("Log Out",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),),
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
