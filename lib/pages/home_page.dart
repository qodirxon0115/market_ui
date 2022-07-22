
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Cars",
          style: TextStyle(color: Colors.deepOrange,
              fontSize: 25),),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.notifications_none, color: Colors.deepOrange,),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.shopping_cart, color: Colors.deepOrange,),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true,"ALL"),
                    singleTab(false,"Red"),
                    singleTab(false,"Blue"),
                    singleTab(false,"Green"),
                    singleTab(false,"Black"),
                  ],
                ),
              ),
              const SizedBox(height: 20,),

              //carItems
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text){
    return AspectRatio(
        aspectRatio: 2.2/1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type? Colors.deepOrange : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
            child: Text(text,
              style: TextStyle(
                  fontSize: type? 17:16),
        ),
      ),
     ),
    );
  }

  Widget makeItem(String image){
    return Container(
      height: 225,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0,10)
          )
        ]
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
            ]
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("PDP Car",
                  style: TextStyle(
                      color: Colors.white, fontSize: 25,
                      fontWeight: FontWeight.bold),),

                SizedBox(width: 8,),

                Text("Electric",
                  style: TextStyle(
                      color: Colors.red, fontSize: 19,
                      fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 8,),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("100\$",
                    style: TextStyle(
                        color: Colors.white, fontSize: 24,
                        fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.deepOrangeAccent,
                  ),
                  child: const Center(
                    child: Icon(Icons.favorite_border),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}