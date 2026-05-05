import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,  home: HomePage());
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/fi-rr-align-left.png'),
            SizedBox(width: 20),
            Image.asset('assets/Nike icon mark.png'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/fi-rr-shopping-bag.png'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              Center(
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 150,
                      width: 334,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "20% Discount",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "on your first purchase",
                              style: TextStyle(fontSize: 10),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                minimumSize: Size(49, 12),
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {},
                              child: Text("Shop Now"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -10,
                      right: -20,
                      child: Transform.rotate(
                        angle: 50,
                        child: Image.asset(
                          'assets/Green 1.png',
                          height: 200,
                          width: 250,
                        ),
                      ),
                    ),
                  ]
                ),
              ),
                  SizedBox(height: 20,),
                    SizedBox(height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: scroll.length,
                      itemBuilder:(context, index) {
                      return Padding(padding: const EdgeInsetsGeometry.symmetric(horizontal: 12),
                      child: Text(scroll[index],
                      style: TextStyle(color: Colors.grey,fontSize: 15),
                      ),
                      );
                    },
                    ),
                    ),
                    SizedBox(height: 20),
          
                    SizedBox(height: 700,
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2,crossAxisSpacing: 12,childAspectRatio: 0.7,mainAxisSpacing: 12),
                     itemCount: style.length,
                     itemBuilder: (context,index){
                     return Container(decoration: BoxDecoration(color: Colors.grey,
                     borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Expanded(child:
                               Center(child: Image.asset(image[index],
                               fit: BoxFit.contain,))), 
                              Text(style[index],
                              style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                              ), 
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                              Text(price[index],
                              style: TextStyle(color: Colors.black,
                              fontSize: 15)  
                              ),
                              Icon(Icons.arrow_forward_ios,
                              size: 16,)
                              ], 
                              ),
                          
                                      ],
                                    
                        ),
                      ),
                );
            },
                    
            ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
                         


List scroll=[
  "All",
  "Running",
  "Sneakers",
  "Formal",
  "Casual",
  "DunkLow",
  "Samba",
  "Balerina"
];
List style=[
  "Air Max 97",
  "React Presto",
  "Air Max 97",
  "KD13 EP"
];
List price=[
"\$20.99",
"\$25.99",
"\$20.99",
"\$25.99"
];
List image=[
"assets/Yellow Shoe.png",
"assets/toppng.png",
"assets/Shoe 1.png",
"assets/15947562_30161559_1000-removebg-preview 1.png"
];