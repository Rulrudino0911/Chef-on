import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  Info();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFFFF5656),
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
                height: 450,
                child: Image.asset("assets/images/infoBackground.png",fit: BoxFit.fill),
              ),
              SizedBox(height: 20),


              Row(
                children: [
                  SizedBox(width: 50),
                  Text("계란 후라이",style: TextStyle(fontSize: 60)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SizedBox(width: 50),
                  Text("그냥 계란후라이입니다.",style: TextStyle(fontSize: 25),),
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
                        Text("50°C",style: TextStyle(fontSize: 30),)
                      ],
                    ),
                  ),

                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.watch_later_rounded,size: 50,),
                        Text("50m",style: TextStyle(fontSize: 30))
                      ],
                    ),
                  ),


                ],
              ),
              SizedBox(height: 30),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(width: screenSize.width-300),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                            width: 300,
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
                    )
                  ],
                )
              )
            ],
          ),
          Row(
            children: [
              SizedBox(width: 180),
              Expanded(child: Image.asset("assets/images/FriedEgg.png",fit: BoxFit.fill))
            ],
          )
        ],
      )
    );
  }
}
