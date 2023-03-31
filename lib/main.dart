import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
      title: 'Flutter Demo' ,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    ),
    );
    

}

  



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  int counter=0;
  void clickcouter(){
    setState(() {
      counter++;
    });

  }
   void clickreatart(){
    setState(() {
      counter=0;
    });

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      backgroundColor:const Color.fromARGB(66, 99, 88, 88),
      appBar: AppBar(
        title: const Text('Button app',
        style: TextStyle(
          fontFamily: 'Times New Roman',
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 102, 28, 5)
        ),
        ),
        backgroundColor:const Color.fromARGB(255, 109, 17, 125),
         centerTitle: true,
        

      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        
        
          children:<Widget>[ 
            const Text('Welcome to button game',
          style: 
           TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,


          ),
         
          ),
          const Text('Number of clicks',
          style: 
           TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,


          ),
         
          ),
          Text('$counter',
           style: 
           const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,


          ),
          ),
          TextButton(onPressed: (){
            clickcouter();
          }, child:const  Text('klick',
          style: 
          TextStyle(
            color: Colors.blueGrey,

          ),)
          ),
           TextButton(onPressed: (){
           clickreatart();
          }, child:const  Text('reastart',
          style: 
          TextStyle(
            color: Colors.blueGrey,

          ),)
          ),
        ],
         
        
         
        

      ) ,
      ),

      

    ),
    );
    
  }
}







