import 'dart:async';
import 'dart:io';

import 'package:chef_on/cooking/realfinish.dart';
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
        return Container();
    });
  }

  Future<List<Map<String,String>>> readProcess() async {
    var process = await File(Myfood[0].FPath).readAsLines();
    process.removeRange(0, 4);
    List<Map<String,String>> pros = [];
    for(int i = 0;i<process.length;i+=2) {
      pros.add({"${process[i]}" : "${process[i+1]}"});
    }

    return pros;
  }
}


class CookingWidget extends StatefulWidget {
  var snapshot;
  CookingWidget({required this.snapshot});

  @override
  State<CookingWidget> createState() => _CookingWidgetState();
}

int Nowpros = 0;
String NowRole = "";
class _CookingWidgetState extends State<CookingWidget> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //goNext();
    final Size screenSize = MediaQuery.of(context).size;
    var snapshot = widget.snapshot;
    var process = snapshot.data;
    NowRole = process[Nowpros].values.first.toString().split(" ")[0];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.keyboard_arrow_left,color: Colors.black,size: 50),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Row(
              children: [
                SizedBox(width: 30),
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
                          fontSize: 19,
                          color: Nowpros == i ? Color(0xFFFF8BC59) : Colors.black
                        ),
                      )
                  ],
                ): Text(""),

                SizedBox(height: 30),
                Expanded(
                  child: Container(
                    width: screenSize.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(75)),
                        color: Colors.black
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(height: 20),
                          for(int i = 0;i<process.length;i++)
                            Container(
                              width: screenSize.width*0.9,
                              height: 150,
                              decoration: BoxDecoration(
                                color: i == Nowpros ? Color(0xFFEEAC48) : Colors.black,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft: Radius.circular(50)),
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("${i+1} : " + process[i].keys.first.toString(),
                                      style: TextStyle(
                                          fontSize: i == Nowpros ? 25 : 20,
                                          color: i == Nowpros ? Colors.white : Colors.grey[700]
                                      ),
                                    ),

                                    SizedBox(width: 20),

                                    Nowpros == i ? btnCheck(func: () {setState(() {});},value: int.parse(process[Nowpros].values.first.toString().split(" ")[1])) : Text(""),
                                  ],
                                )
                              ),
                            ),
                        ],
                      ),
                    ),
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




class btnCheck extends StatelessWidget {
  Function func;
  int value;
  btnCheck({required this.func, required this.value});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          width: 50, height: 50,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          child: Center(child: Text("GO"),)
      ),



      onTap: () {
        debugPrint("완료 버튼 클릭");
        Nowpros += 1;
        func();

        if(NowRole == "t") {
          bluetoothClassicPlugin.write("$value");

          while(true) {
            sleep(Duration(seconds: 1));
            if(data == "g") {
              break;
            }
          }
        }
        else if(NowRole == "w") {
          sleep(Duration(seconds: value));
        }
        else if(NowRole == "e") {
          bluetoothClassicPlugin.write("e");
          Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context) => realFinish()));
        }
      },
    );
  }
}
