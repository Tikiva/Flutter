import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  bool get kDebugMode => true;
  int counter=0;

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30= TextStyle(fontSize: 30);
  
    return  Scaffold(
      appBar:AppBar(
        title: const Text('CounterScreen') ,
        elevation: 10.0,
      ),
      
      body: Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            const Text('Clicks counter',style: fontSize30,),
            Text('$counter',style: fontSize30), 
          ],
        )
      ),
  
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
          FloatingActionButton(
            child: const Icon (Icons.exposure_minus_1_outlined),
            onPressed: (){
              
              setState((){counter--;});
              // if (kDebugMode) {
              //   print("Hola mundo, $counter");
              // }
              
            }),
            const SizedBox(width: 20),
            FloatingActionButton(
            child: const Icon (Icons.restart_alt_outlined),
            onPressed: (){
              counter=0;
              setState((){});
              // if (kDebugMode) {
              //   print("Hola mundo, $counter");
              // }
              
            }),
            const SizedBox(width: 20),
            FloatingActionButton(
            child: const Icon (Icons.exposure_plus_1_outlined),
            onPressed: (){
              
              setState((){counter++;});
              // if (kDebugMode) {
              //   print("Hola mundo, $counter");
              // }
              
            }),
         
        ],
      ),

     );
    
  }
}