import "package:flutter/material.dart";

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

  int clickCounter = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Counter Functions Screen'),
        // se muestra al inicio del appbar
        leading: IconButton(
          icon: const Icon(
            Icons.refresh_rounded
            ),
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            },
        ),
        //actions permite agregart una lista de buttons
        actions: [
          IconButton(
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            },
             icon: const Icon(
              Icons.refresh_rounded
             )
             )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),
            Text('Click${ clickCounter == 1? '': 's'}', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w100),),
          ],
        ),
      ),
      floatingActionButton:  Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(icon: Icons.refresh_rounded, onPressed: (){
            setState(() {
              clickCounter = 0;
            });
          }),
          //Sized_box permite crar espacios entre contenedores
          SizedBox(height: 10,),
          CustomButton(icon: Icons.plus_one, onPressed: (){
            setState(() {
              clickCounter++;
            });
          },),
          //Sized_box permite crar espacios entre contenedores
          SizedBox(height: 10,),
          CustomButton(icon: Icons.exposure_minus_1, onPressed: (){
            setState(() {
              clickCounter > 0? clickCounter--: null;
            });
          },),
        ],
      ),
    );
    
  }
}

class CustomButton extends StatelessWidget {

  //IconData es la clase que hereda los icon
  final IconData icon;
    //VoidCallback es la clase que hereda la funcion onpresed
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
     required this.icon, 
     required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      //redondear boton
      shape: const StadiumBorder(),
      //activa el sonido del boton
      elevation: 10,
      enableFeedback: true,
      backgroundColor: Colors.blue,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}