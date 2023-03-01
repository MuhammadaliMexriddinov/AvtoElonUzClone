import 'package:flutter/material.dart';

import '../../../providers/widgets_provider.dart';
import 'package:provider/provider.dart';

import '../../core/models/Car.dart';

class WidgetBottomSheetDetail extends StatefulWidget {

   WidgetBottomSheetDetail({Key? ke, required this.car,required this.index}) : super(key: ke);
  final Car car;
  final int index;

  @override
  State<WidgetBottomSheetDetail> createState() => _WidgetBottomSheetState();
}

class _WidgetBottomSheetState extends State<WidgetBottomSheetDetail> {
  String query = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/car${widget.index}.png"),
              //image: AssetImage("assets/images/car4.png"),
              width: 200,
              height: 150 ),
          SizedBox(height: 50,),
          Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
            SizedBox(height: 10,),
            Row(children: [
              Text("Car Brand: ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,),),
              Text("${widget.car.brent}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,decoration: TextDecoration.underline,color: Colors.blue),),
            ],),
            Row(children: [
              Text("Car Model: ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              Text("${widget.car.model}",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22,color: Colors.blue,decoration: TextDecoration.underline),),
            ],),
            SizedBox(height: 10,),
          ],),
          SizedBox(height: 40,),
          Row(mainAxisAlignment:MainAxisAlignment.center,children: [
            InkWell(

                child: Container(
                    margin: EdgeInsets.only(left: 10, right: 30),
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Orqaga",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],)
        ],
      ),
    );
  }
}
