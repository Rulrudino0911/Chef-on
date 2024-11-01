import 'dart:async';
import 'dart:typed_data';

import 'package:chef_on/cooking/Cooking.dart';
import 'package:chef_on/factor.dart';
import 'package:chef_on/userpage/connect.dart';
import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  Info();

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFFFF8BC59),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {Navigator.pop(context);},
        ),
      ),

      body: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Column(
            children: [
              Container(
                width: double.infinity,
                height: screenSize.height*0.45,
                child: Image.asset("assets/images/infoBackground.png",fit: BoxFit.fill),
              ),
              SizedBox(height: 20),


              Row(
                children: [
                  SizedBox(width: 50),
                  Text(Myfood[0].name,style: TextStyle(fontSize: 60)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 50),
                  Text("그냥 ${Myfood[0].name}입니다.",style: TextStyle(fontSize: 25),),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.thermostat,size: 50,),
                        Text("${Myfood[0].ExTem}°C",style: TextStyle(fontSize: 30),)
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.watch_later_rounded,size: 50,),
                        Text(" ${Myfood[0].ExMin}m",style: TextStyle(fontSize: 30))
                      ],
                    ),
                  ),


                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          onTap: () {
                            if(deviceStatus != 2)
                              Navigator.push(context, MaterialPageRoute(builder: (context) => connect())).then((value) {
                                if(deviceStatus == 2) {
                                  readroop();
                                }
                                setState(() {});
                              });
                          },
                          child: Container(
                              width: screenSize.width/2,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
                                  color: Colors.white
                              ),
                              child: Center(
                                child: deviceStatus != 2 ? Icon(Icons.bluetooth,size: 50,) : Text("")
                              )
                          ),
                        )
                    ),

                    SizedBox(width: 30),

                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Cooking()));
                        },
                        child: Container(
                            width: screenSize.width/2,
                            height: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(50)),
                                color: Colors.black
                            ),
                            child: Center(
                              child: Text("요리하기",style: TextStyle(fontSize: 33,color: Colors.white),),
                            )
                        ),
                      )
                    ),
                  ],
                )
              )
            ],
          ),
          Row(
            children: [
              SizedBox(width: 180),
              Expanded(child: Image.asset(Myfood[0].imgPath,fit: BoxFit.fill))
            ],
          )
        ],
      )
    );
  }
}


void readroop() {
  //그냥 블루투스 계속 읽는 코드
  bluetoothClassicPlugin.onDeviceDataReceived().listen((event) {

    data = Uint8List.fromList(event);
    debugPrint(data.toString());
  });
}