import 'package:flutter/material.dart';

import 'package:bidayajdida/Rahim.dart';

// ignore: must_be_immutable
class Third extends StatefulWidget {
  const Third({super.key, this.data,});
  final data ;
  
  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  bool chek = false;
  bool fav = false ; 
  bool chek1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Drawer(
          
          child: ListView(
            children: [
         
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              
              Icon(Icons.abc),
              Text(' Gipsy'),
              Text(' Bee',style: TextStyle(color: Colors.orange),),
            ],
          ),
        ),
        body: Column(
      children: [
      Stack(
        children: [
          Image.asset(widget.data['image'],),
               IconButton(onPressed: (){
   
   setState(() {
     fav = !fav ;
   });
                        }, icon: Icon( fav 
                        ? Icons.favorite : Icons.favorite_border
                        )),
        ],
      ),
      Text(widget.data['text'],style: TextStyle(fontWeight: .bold,fontSize: 18),),
      Text(widget.data['wasf'],style: TextStyle(fontWeight: .w100,fontSize: 12),),
      Text(widget.data['price'],style: TextStyle(color: Colors.orange,fontWeight: .bold,fontSize: 16),),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
      Text('color:',style: TextStyle(fontWeight: .bold),),
      Checkbox( 
        shape:CircleBorder(side: BorderSide.none),
        
        activeColor: Colors.black,
         value: chek, onChanged: (val){
         setState(() {
       chek = val!;
         });  
      }),
      Text('Pink',style: TextStyle(fontWeight: .bold),),
      Checkbox( 
        shape:CircleBorder(side: BorderSide.none),
        
        activeColor: Colors.black,
         value: chek1, onChanged: (val){
         setState(() {
       chek1 = val!;
         });  
      }),
      Text('Black',style: TextStyle(fontWeight: .bold),)
        ],
      ),
      SizedBox(height: 20,),
      
      MaterialButton(onPressed: (){
      showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Are you sure'),
        actions: [
      MaterialButton(onPressed: (){
      Navigator.of(context).pop();
      },
      child: Text('cancel'),
      
      ),
       MaterialButton(onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Rahim()));
      },
      child: Text('ok'),
      
      )
        ],
      );
      });
      },
      
      color: Colors.red,
      child: Text('Buy'),
      )
      
      
      ],
        ),
      ),
    );
  }
}

