import 'package:bidayajdida/HomPage.dart';
import 'package:flutter/material.dart';


class Fisrd extends StatefulWidget {
  const Fisrd({super.key});

  @override
  State<Fisrd> createState() => _FisrdState();
}

class _FisrdState extends State<Fisrd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     extendBodyBehindAppBar: true,
     
      body: Stack(
       fit: StackFit.expand,
        children: [
             Image.asset('images/2.jpg',fit: BoxFit.fill,
         )  , 
         
       
           Row(
             children: [
              SizedBox(width: 20,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 350,),
                  Text("Women's",style: TextStyle(fontWeight: .bold,color: Colors.black),),
                  Text('CLOTHES',style: TextStyle(fontWeight: .bold,fontSize: 25,color: Colors.white),),
                  Text('+56 items',style: TextStyle(fontWeight: .w100,fontSize: 10,color: Colors.black),),
                  SizedBox(height: 10,),
                  MaterialButton(onPressed: (){
               Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=> Second()), (route) => false,);
                  },
                  color: Colors.black,
                  child: Text('see more',style: TextStyle(fontWeight: .bold,fontSize:10,color: Colors.white),),
                  )
                ],
                         ),
             ],
           ),]) 
             
      );
       
    
  }
}