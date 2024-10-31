import 'dart:io';

import 'package:chef_on/factor.dart';
import 'package:flutter/material.dart';

class Cooking extends StatefulWidget {
  const Cooking({super.key});

  @override
  State<Cooking> createState() => _CookingState();
}

class _CookingState extends State<Cooking> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // 화면의 크기 정보를 가져옵니다.

    return FutureBuilder(future: readProcess(), builder: (context, snapshot) {
      if(snapshot.hasData)
        return CookingWidget(snapshot: snapshot);
      else
        return  Container();
    });
  }

  Future<List<Map<String,String>>> readProcess() async {
    var process = await File(Myfood[0].FPath).readAsLines();
    process.removeRange(0, 4);
    debugPrint(process.toString());
    List<Map<String,String>> pros = [];
    for(int i = 0;i<process.length;i+=2) {
      pros.add({"${process[i]}" : "${process[i+1]}"});
    }

    debugPrint(pros.toString());
    return pros;
  }
}


class CookingWidget extends StatefulWidget {
  var snapshot;
  CookingWidget({required this.snapshot});

  @override
  State<CookingWidget> createState() => _CookingWidgetState();
}

class _CookingWidgetState extends State<CookingWidget> {
  int Nowpros = 2;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    var snapshot = widget.snapshot;
    var process = snapshot.data;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 50,),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                SizedBox(width: 30,),
                Text(Myfood[0].name,style: TextStyle(fontSize: 50,decoration: TextDecoration.none),),
              ],
            )
          ),
          SizedBox(height: 20),
          Expanded(
            child: Column(
              children: [
                snapshot.hasData ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    for(int i = 0;i<process.length;i++)
                      Text("과정 ${i+1}",style: TextStyle(
                          fontSize: 22,
                          color: Nowpros == i ? Colors.red : Colors.black
                        ),
                      )
                  ],
                ): Text(""),

                SizedBox(height: 30),
                Expanded(
                  child: Container(
                    width: screenSize.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(75),topLeft: Radius.circular(75)),
                        color: Colors.black
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        for(int i = 0;i<process.length;i++)
                          Expanded(
                            child: Container(
                              width: screenSize.width*0.9,
                              decoration: BoxDecoration(

                                  color: i == Nowpros ? Colors.red : Colors.black,
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50)),
                              ),
                              child: Center(
                                child: Text("${i+1} : " + process[i].keys.first.toString(),
                                  style: TextStyle(
                                      fontSize: i == Nowpros ? 35 : 25,
                                      color: i == Nowpros ? Colors.white : Colors.grey[700]
                                  ),
                                ),
                              ),
                            ),
                          )
                      ],
                    )
                    ,
                  )
                ),


              ],
            )
          )
        ],
      )
    );
  }
}
