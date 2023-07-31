import 'package:flutter/material.dart';
import 'package:day_eighteen/model.dart';

class Travel_Blog extends StatelessWidget {
  Travel_Blog({Key? key}) : super(key: key);
  @override
  final travel_list = Model.travelbloglist();
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
          scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
          return Stack(
          children: [
          Container(
          width: MediaQuery.of(context).size.width*0.90,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey,
          image: DecorationImage(
          image: AssetImage(travel_list[index].image),
          fit: BoxFit.fill
          )
          ),
          ),
          Positioned(
          left: 20,
          bottom: 20,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(travel_list[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.yellow),),
          Text(travel_list[index].Location,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
          ],
          )
          ),

          ],
          );
          }, separatorBuilder: (_,index)=>SizedBox(width: 15,), itemCount: travel_list.length)
    );
  }
}
