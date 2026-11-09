import 'package:bidayajdida/Second.dart'; 
import 'package:flutter/material.dart'; 
import 'package:bidayajdida/dark.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  bool rad = true ; 
  bool fav = true ; 
  List ico = [
 {'image':'images/sma3a.jpg' , "text":"Logitech G 231",'wasf':'Blutooth Headphone', "price":"359\$"},
 {'image':'images/sa3a.jpg' , "text":"Rolex",'wasf':'the best watch you can see', "price":"200\$"},
{'image':'images/ropa.jpg' , "text":"Ropa",'wasf':'Clothing', "price":"150\$"},
{'image':'images/play.jpg' , "text":"Games",'wasf':'play 5 !', "price":"250\$"},
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(
          child: ListView(
            children: [
              Row(
                children : [
Text("Setting   ",style: TextStyle(fontWeight: .bold,fontSize: 20),),
Icon(Icons.settings),
                ]
              ),
         SwitchListTile(
          title: Row(children: [Text('Dark Mode         '),Icon(Icons.dark_mode_sharp)],),
          value: isDark.value , onChanged: (val){
    setState((){
      
      isDark.value = val;
      print(val);
    } );
         })
            ],
          ),
        ),
        appBar: AppBar(
          
          title: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
        color: Colors.grey[200],
            ),
           
            padding: EdgeInsets.all(7),
            child: Row(
              children: [
                IconButton(onPressed: (){
                  // ignore: unused_label
                showSearch(context: context, delegate: Delegate(ico));
                }, icon: Icon(Icons.search)),
                SizedBox(width: 10,),
                Text('Search',style:TextStyle(fontWeight:.w100, fontSize: 12),),
              ],
            ),
          ),
        ),
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
          Text('Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SizedBox(height: 15,),
            SizedBox(
              height: 50,
            
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child :Column(children: [Pic(picture: 'images/four.jpg'),
              Text('Men',style: TextStyle(fontSize: 12),)
              
             
              ] ),),
            SizedBox(
              width: 70,
              height: 70,
              child :Column(children: [Pic(picture: 'images/third.jpg'),
              Text('Women',style: TextStyle(fontSize: 12),)
              
             
              ] ),),
              SizedBox(
                
              width: 70,
              height: 70,
              child :Column(
                
                children: [Pic(picture: 'images/two.jpg'),
              Text('Electronics',style: TextStyle(fontSize: 12),)
              
             
              ] ),),
              SizedBox(
              width: 70,
              height: 70,
              child :Column(children: [Pic(picture: 'images/one.jpg'),
              Text('Game',style: TextStyle(fontSize: 12),)
              
             
              ] ),),
          
          SizedBox(
              width: 70,
              height: 70,
              child :Column(children: [Pic(picture: 'images/one.jpg'),
              Text('Play',style: TextStyle(fontSize: 12),)
              
             
              ] ),),
           SizedBox(
              width: 70,
              height: 70,
              child :Column(children: [Pic(picture: 'images/one.jpg'),
              Text('Solo',style: TextStyle(fontSize: 12),)
              
             
              ] ),),
                 
          
                ],),
              ),
            ),
           
            SizedBox(height: 15,),
            Text(
              textAlign: TextAlign.start,
              'Best Selling',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,textBaseline:TextBaseline.ideographic ),),
              Row(children: [
               
              ],),
          GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
             
             itemCount: ico.length,
             
              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.7),
            itemBuilder: (context, i) {
            return     InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Third(data:ico[i], )));
              },
              child:  Column(
                children: [
                  Container(
                   margin: EdgeInsets.all(5),
                    child: 
                        Image(
                                      image: AssetImage(ico[i]['image']),
                                      fit: BoxFit.cover,
                       
                    ),
                  ),
                   Text(ico[i]['text']),
                   Text(ico[i]['wasf'],textAlign: TextAlign.start,style: TextStyle(fontSize: 10),),
                   Text(ico[i]['price'],style:TextStyle(color:Colors.orange),)
                ],
              ),
            );
            }
                   
                     
            
            
            
            ),
          
          
          
          ],)
              ],
            ),
          ),
        )
      );
  
  }
}

      // معلومات العملاء 
 // ignore: must_be_immutable
 class Pic extends StatelessWidget {
   const Pic({super.key, required this.picture});
  final String picture ;
   @override
   Widget build(BuildContext context) {
     return Container(

      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(30),
        child:Image.asset(picture,
        fit: BoxFit.cover,
        height: 33,
        width: 33,
        ),
      ), 
     );
   }
 }

  class Delegate extends SearchDelegate {
  final List items;
  Delegate(this.items);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '',
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: Icon(Icons.arrow_back),
    );
  }

  List _filter() {
    return items
        .where((e) =>
            e['text'].toString().toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  Widget _list(BuildContext context) {
    final res = _filter();
    if (res.isEmpty) {
      return Center(child: Text('No results for "$query"'));
    }
    return ListView.builder(
      itemCount: res.length,
      itemBuilder: (context, i) {
        return ListTile(
          leading: Image.asset(res[i]['image'], width: 50, height: 50, fit: BoxFit.cover),
          title: Text(res[i]['text']),
          subtitle: Text(res[i]['wasf']),
          trailing: Text(res[i]['price'], style: TextStyle(color: Colors.orange)),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Third(data: res[i])),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) => _list(context);

  @override
  Widget buildSuggestions(BuildContext context) => _list(context);
}