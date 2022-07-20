import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  
  const HomeScreen({Key? key}) : super(key: key);

  bool get kDebugMode => true;
  
  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30= TextStyle(fontSize: 30);
    int counter=0;
    return  Scaffold(
      appBar:AppBar(
        title: const Text('HomeScreen') ,
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
      floatingActionButton: FloatingActionButton(
        child: const Icon (Icons.add),
        onPressed: (){
          counter++;
          if (kDebugMode) {
            print("Hola mundo, $counter");
          }
          
        }),

     );
    
  }

}