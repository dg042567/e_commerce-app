import 'package:e_commerce_app/components/shoe_tile.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => ShopPageState();
}

class ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context){
    return Column (
      children: [
        //search
        Container(
          padding: EdgeInsets.all(12),
          margin:EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search'),
              Icon(Icons.search,
              color: Colors.grey,),
              
            ],
          ),
        ),


        //hot picks
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Hot Picks!', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),),
              Text('See all', style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),),
          
            ],
          ),
        ),

        const SizedBox(height: 10,),

        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index)  {
          // create a shoe
          Shoe shoe = Shoe(
            name: 'Air Jordan', 
            price: '240', 
            imagePath: 'lib/image/airjordan1.jpg/',
            description: 'cool shoe');
          return  ShoeTile(
            shoe:shoe ,
          );
          }, ),)




      ],
     

    );
  }

}