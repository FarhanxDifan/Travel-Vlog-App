import 'package:day_eighteen/model.dart';
import 'package:flutter/material.dart';
class MostPopular extends StatelessWidget {
   MostPopular({Key? key}) : super(key: key);
final popular_list = Model.mostpopularlist();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        scrollDirection:Axis.horizontal,
          itemBuilder: (context,index){
        return Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueGrey,
                  image: DecorationImage(
                      image: AssetImage(popular_list[index].image),
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
                    Text(popular_list[index].name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.yellow),),
                    Text(popular_list[index].Location,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black)),
                  ],
                )
            ),

          ],
        );
      }, separatorBuilder: (_,index)=>SizedBox(width: 10,), itemCount: popular_list.length),
    );
  }
}
