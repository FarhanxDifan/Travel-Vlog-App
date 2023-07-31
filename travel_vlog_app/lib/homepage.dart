import 'package:day_eighteen/mostpopular.dart';
import 'package:day_eighteen/travel_blog.dart';
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(Icons.menu,color: Colors.black,),
        )],
      ),
      body: Stack(
        children: [
          Container(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Travel Blog',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Expanded(
                  flex: 5,
                    child: Travel_Blog()),
                   SizedBox(height: 35,),

                   Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text('Most Popular',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                   Padding(
                     padding: const EdgeInsets.all(10),
                     child: Text("View All",style: TextStyle(fontSize: 18,color: Colors.orange,fontWeight: FontWeight.bold),),
                   ),
                 ],
                   ),
                SizedBox(height: 10,),
                Expanded(
                  flex: 3,
                    child: MostPopular(),
                ),
                Divider(height: 1,indent: 50,endIndent: 50,),
                SizedBox(height: 15,)
              ],
            ),
        ),
        Positioned(
            right: MediaQuery.of(context).size.width*0.15,
            bottom: MediaQuery.of(context).size.height*0.38,

            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40),
              ),
              child: Icon(Icons.arrow_forward,size: 30,color: Colors.white,),
            ))

        ]
      ),
    );
  }
}
