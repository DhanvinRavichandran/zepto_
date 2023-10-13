import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';




void main()=>runApp(MaterialApp(
  home: new zepto(),
  debugShowCheckedModeBanner: false,
));
class zepto extends StatefulWidget {
  const zepto({Key? key}) : super(key: key);

  @override
  State<zepto> createState() => _zeptoState();
}

class _zeptoState extends State<zepto> {
  final List<String> Imagelist=["https://cdn1.vectorstock.com/i/1000x1000/48/85/colorful-organic-banner-with-vegetables-vector-14994885.jpg",
    "https://t3.ftcdn.net/jpg/01/63/13/30/360_F_163133061_TlMOMqgxAvBuwzLAjxOQ8v1FQ3OexfRG.jpg",
    "https://c8.alamy.com/comp/W2CPDB/farm-fresh-vegetables-vector-banner-store-shop-grocery-detailed-illustrations-poster-W2CPDB.jpg",
    "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fresh-vegetables-%26-fruits-banner-design-template-6ec10a6556c3f6898c9d77e392334dcd_screen.jpg?ts=1656144898"];
  final CarouselController carouselController = CarouselController();
  int activepage = 0;

  var searchTextField=TextEditingController();
  int myindex=0;
  List  images=["assets/images/G1.jpg",
    "assets/images/G2.webp",
    "assets/images/G3.webp",
    "assets/images/G4.webp",
    "assets/images/G5.jpg",
    "assets/images/G6.jpg",
    "assets/images/G7.jpg",
    "assets/images/G8.jpg",
    "assets/images/G9.jpg",
    "assets/images/G10.jpg",
    "assets/images/G11.jpg",
    "assets/images/G12.jpg",
  ];
  var text =["Eggs","Milks","Meat","Fruits","Vegetables","Oils",
    "Bread","Fresh Juices","Burgers","Dry Fruits","Cold Drinks","Rice"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("ZEPTO",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontStyle:FontStyle.italic),),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(onPressed: (){},
            icon:Icon(Icons.account_balance_wallet),),
          IconButton(onPressed: (){},
            icon:Icon(Icons.search),),
          IconButton(onPressed: (){},
            icon:Icon(Icons.person),),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 60,
                    width: 100,
                    color: Colors.lightGreenAccent,
                    child:Center(
                      child: Text("Free Delivery Above 149 ",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),textAlign: TextAlign.center,),
                    )
                ),
                Container(
                    height: 60,
                    width: 211,
                    color: Colors.green,
                    child:Center(
                      child: Text("Delivery to You in 15Mins",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500,
                        ),textAlign:TextAlign.center,),
                    )
                ),
                Container(
                    height: 60,
                    width: 100,
                    color: Colors.lightGreenAccent,
                    child:Center(
                      child: Text("Free Delivery Above 149 ",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w500,
                        ),),
                    )
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: TextFormField(
                controller: searchTextField,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(30.0),),
                  labelText: "Search Items",
                  suffixIcon: Icon(Icons.search,size: 30.0,),
                ),
              ),
            ),
            SizedBox(height: 5.0,),
            Container(height: 180,child: CarouselSlider(items:Imagelist.map((item) =>
                Image.network(item,fit: BoxFit.cover,width: double.infinity,),).toList(),carouselController:CarouselController(),
              options: CarouselOptions(scrollPhysics: BouncingScrollPhysics(),autoPlay: true,aspectRatio: 2,viewportFraction: 1,
                  onPageChanged: (index, reason){
                    setState(() {
                      activepage = index;
                    });
                  }),),)

            ,SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Explore by Categories",
                  style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      backgroundColor: Colors.deepOrange,
                      color: Colors.white),
                  textAlign: TextAlign.left,),
                TextButton(onPressed: (){},
                  child:Text("See all",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.right,),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red,),
                      backgroundColor: MaterialStateProperty.all(Colors.white,),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: Colors.red,)
                          )
                      )
                  ),)

              ],
            ),
            SizedBox(height: 10.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 150,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          alignment: Alignment.center,image: AssetImage(
                          "assets/images/G4.webp"
                      )
                      )),
                  child: Text("Fruits & Vegetables",style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.w500),textAlign: TextAlign.center,),
                ),
                Container(
                  height: 150,
                  width: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          alignment: Alignment.center,
                          image: AssetImage("assets/images/G6.jpg")
                      )
                  ),
                  child:Text("Oil",style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Container(
              child: Wrap(
                spacing: 30,
                runSpacing: 15,
                children: [
                  Expanded(
                    child: Center(
                      child: Expanded(
                        child: GridView.builder(
                            scrollDirection: Axis.vertical,
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                            itemCount: images.length,
                            itemBuilder:(BuildContext context,index)
                            {
                              return Card(
                                elevation: 10,
                                child: Container(
                                  child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 100,
                                        width: 200,
                                        decoration: BoxDecoration(
                                            image:DecorationImage(
                                              image: AssetImage(images[index]),
                                            )
                                        ),
                                      ),
                                      Text(text[index])
                                    ],),
                                ),
                              );
                            }
                        ),
                      ),
                    ),
                  )
                ],
              ),

            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Exclusive Offers",
                  style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      backgroundColor: Colors.deepOrange,
                      color: Colors.white),
                  textAlign: TextAlign.left,),
                TextButton(onPressed: (){},
                  child:Text("See all",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.right,),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red,),
                      backgroundColor: MaterialStateProperty.all(Colors.white,),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: Colors.red,)
                          )
                      )
                  ),)

              ],
            ),
            SizedBox(height: 10.0,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation:10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/apple.webp",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Red Apple",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/banana.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Orgonic Bananas",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/graphs.webp",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Green Graphs",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/orange.webp",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Orange",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Best Sellings",
                  style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      backgroundColor: Colors.deepOrange,
                      color: Colors.white),
                  textAlign: TextAlign.left,),
                TextButton(onPressed: (){},
                  child:Text("See all",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.right,),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red,),
                      backgroundColor: MaterialStateProperty.all(Colors.white,),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: Colors.red,)
                          )
                      )
                  ),)

              ],
            ),
            SizedBox(height: 10.0,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation:10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/carrot.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Carrot",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/red chlli.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Red Chilli",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/onion.webp",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Onion",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/tomatoes.webp",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Tomateos",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Groceries",
                  style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      backgroundColor: Colors.deepOrange,
                      color: Colors.white),
                  textAlign: TextAlign.left,),
                TextButton(onPressed: (){},
                  child:Text("See all",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.right,),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red,),
                      backgroundColor: MaterialStateProperty.all(Colors.white,),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: Colors.red,)
                          )
                      )
                  ),)

              ],
            ),
            SizedBox(height: 10.0,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation:10,
                      child: Container(
                        height: 100,
                        width:250,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/G12.jpg")
                                      )
                                  ),
                                ),
                                Container(
                                  padding:EdgeInsets.all(10) ,
                                  alignment: Alignment.centerRight,
                                  child: Text("Rices",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation:10,
                      child: Container(
                        height: 100,
                        width:250,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/G10.jpg")
                                      )
                                  ),
                                ),
                                Container(
                                  padding:EdgeInsets.all(10) ,
                                  alignment: Alignment.centerRight,
                                  child: Text("Nuts",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation:10,
                      child: Container(
                        height: 100,
                        width:250,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/chocolate.jpg")
                                      )
                                  ),
                                ),
                                Container(
                                  padding:EdgeInsets.all(10) ,
                                  alignment: Alignment.centerRight,
                                  child: Text("Chocolates",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                )
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Meat",
                  style: TextStyle(fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      backgroundColor: Colors.deepOrange,
                      color: Colors.white),
                  textAlign: TextAlign.left,),
                TextButton(onPressed: (){},
                  child:Text("See all",
                    style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.right,),
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all(Colors.red,),
                      backgroundColor: MaterialStateProperty.all(Colors.white,),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                              side: BorderSide(color: Colors.red,)
                          )
                      )
                  ),)

              ],
            ),
            SizedBox(height: 10.0,),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      elevation:10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/mutton.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Fresh Mutton",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/prawn.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Prawn",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/fish.jpg",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Sea Fish",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Card(
                      elevation: 10,
                      child: Container(
                        width:200,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.indigo,
                                      borderRadius: BorderRadius.circular(3)
                                  ),
                                  child: Text("-50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),),
                                ),
                                Icon(Icons.favorite_border_outlined,color: Colors.red,)
                              ],
                            ),
                            InkWell(
                              onTap: (){},
                              child: Container(
                                margin: EdgeInsets.all(10),
                                child: Image.asset("assets/images/G3.webp",height: 120,width: 120,fit: BoxFit.cover,),
                              ),
                            ),
                            Container(
                              padding:EdgeInsets.all(10) ,
                              alignment: Alignment.center,
                              child: Text("Chicken",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text("1KG",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.indigo
                                ),),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("\$75",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo
                                    ),),
                                  Icon(Icons.add,color: Colors.indigo,)
                                ],
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            myindex=index;
          });
        },
        currentIndex: myindex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.deepPurple,size: 30.0,),label:"Shop",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.manage_search_outlined,color: Colors.deepPurple,size: 30.0,),label:"Explore",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout_outlined,color: Colors.deepPurple,size: 30.0,),label:"Cart",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined,color: Colors.deepPurple,size: 30.0,),label:"Favorites",backgroundColor: Colors.black),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,color: Colors.deepPurple,size: 30.0,),label:"Account",backgroundColor: Colors.black),
        ],
      ),
    );
  }
}
