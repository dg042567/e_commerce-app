import 'package:e_commerce_app/components/bottom_navbar.dart';
import 'package:e_commerce_app/pages/cart_page.dart';
import 'package:e_commerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});


 @override
  State<HomePage> createState() {
   return HomePageState();
   }
  
}



class HomePageState extends State<HomePage> {
  //this selected index is to control the bottom nav bar
  int selectedIndex = 0;
  
  //this method will update the selected index
  //when the user taps on the bottom bar
  void navigateBottomBar(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  //pages to display
  final List<Widget> pages =[
    //shop page
    const ShopPage(),

    //cart page
    const CartPage(),


  ];



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (Index) =>  navigateBottomBar(Index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
            icon:Padding(
              padding:  EdgeInsets.only(left: 12.0),
              child:  Icon(Icons.menu, color: Colors.black),
            ), 
            onPressed: () { 
            Scaffold.of(context).openDrawer();
            },);
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            //logo
            Column(
              children: [
                DrawerHeader(child: Image.asset(
              'lib/image/nike.png', 
              color: Colors.white,
              ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Divider(
                  color: Colors.grey[800],
                ),
              ),

            //other pages
            const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text('Home',
                style: TextStyle(color: Colors.white),),
                
              ),
            ),

            const Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white,),
                title: Text('About',
                style: TextStyle(color: Colors.white),),
                
              ),
            ),]
            ),

            const Padding(
              padding: const EdgeInsets.only(left: 25.0,bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text('Logout',
                style: TextStyle(color: Colors.white),),
                
              ),
            )


          ],
          
      ),
      
              
            ),
      body: pages[selectedIndex],
    );
  }
}