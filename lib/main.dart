import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result=0,num1=0,num2=0;
  add(){
    setState(() {

      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! + num2!;
    });
  }
  div(){
    setState(() {

      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! ~/ num2!;
    });
  }
  mul(){
    setState(() {

      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }
  sub(){
    setState(() {

      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color(0xFF5272F2),
              centerTitle: true,
              title: const Text('The Best Calculator'),
            ),
            body: Container(
                color: const Color(0xFFFBECB2),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text("Result : $result"
                        , style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controller1,
                        decoration: InputDecoration(
                          labelText: ("Enter The First Number: "),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        controller: controller2,
                        decoration: InputDecoration(
                          labelText: ("Enter The Second Number: "),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                        children: [
                          ElevatedButton(onPressed: (){
                            add();
                            controller1.clear();
                            controller2.clear();
                          }, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF8BDEB)), child: const Text("Add (+)",)),
                          ElevatedButton(onPressed: (){
                            sub();
                            controller1.clear();
                            controller2.clear();
                          }, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF8BDEB)), child: const Text("Sub (-)")),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
                        children: [
                          ElevatedButton(onPressed: (){
                            mul();
                            controller1.clear();
                            controller2.clear();
                          }, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF8BDEB)), child: const Text("Mul (x)")),
                          ElevatedButton(onPressed: (){
                            div();
                            controller1.clear();
                            controller2.clear();
                          }, style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF8BDEB)), child: const Text("Div (/)")),
                        ],
                      )
                    ],
                  ),
                )
            )

        )
    );

  }
}