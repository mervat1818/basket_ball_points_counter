import 'package:flutter/material.dart';

void main() {
  runApp( PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({Key? key}) : super(key: key);

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {

    int addPointsTeamA=0;

    int addPointsTeamB=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Basketball Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    children: [
                      const Text('Team A',
                        style: TextStyle(
                          fontSize: 32,

                        ),
                      ),

                      Text('$addPointsTeamA',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                      ),



                      ElevatedButton(onPressed: (){
                        setState(() {
                          addPointsTeamA++;
                        });
                      }, child: const Text('Add 1 Point',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50)
                        ),
                      ),

                      const Spacer(
                        flex:1,
                      ),



                      ElevatedButton(onPressed: (){
                        setState(() {
                          addPointsTeamA+=2;
                        });
                      }, child: const Text('Add 2 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50)
                        ),
                      ),

                      const Spacer(
                        flex:1,
                      ),


                      ElevatedButton(onPressed: (){
                        setState(() {
                          addPointsTeamA+=3;
                        });
                      }, child: const Text('Add 3 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50)
                        ),),

                      Spacer(
                        flex: 4,
                      ),
                    ],
                  ),
                ),


                Container(
                  height: 400,
                  child: const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                    endIndent: 10 ,
                  ),
                ),


                Container(
                  height: 500,
                  child: Column(
                    children: [

                      const Text('Team B',
                        style: TextStyle(
                          fontSize: 32,
                        ),),

                      Text('$addPointsTeamB',
                      style:
                        TextStyle(
                          fontSize: 150,
                        ),),


                      ElevatedButton(onPressed: (){
                        setState(() {
                          addPointsTeamB++;
                        });
                      }, child: const Text('Add 1 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                        ),
                      ),

                      const Spacer(
                        flex:1,
                      ),


                      ElevatedButton(onPressed: (){
                        setState(() {
                          addPointsTeamB+=2;
                        });
                      }, child: const Text('Add 2 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.orange,
                              minimumSize: Size(150, 50)
                          ),
                      ),

                      const Spacer(
                        flex:1,
                      ),


                      ElevatedButton(onPressed: (){
                        setState(() {
                          addPointsTeamB+=3;
                        });
                      }, child: const Text('Add 3 Point',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: Size(150, 50)
                        ),),

                      const Spacer(
                        flex:4,
                      ),


                    ],
                  ),
                ),
              ],
            ),


            Center(child: ElevatedButton(onPressed: (){
              setState(() {
                addPointsTeamB=0;
                addPointsTeamA=0;
              });
            }, child: const Text('Reset',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: Size(150, 50)
              ),),
            )

          ],
        ),
      ),
    );
  }
}


