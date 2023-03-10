import 'package:flutter/material.dart';

class PreloadPage extends StatefulWidget{
  const PreloadPage({Key? key}) : super(key: key);

  @override
  _PreloadPage createState() =>_PreloadPage();
}

class _PreloadPage extends State<PreloadPage>{
  bool loading = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('lib/assets/logo.png',
            width: 200,
            ),
            loading? Container(
              margin: const EdgeInsets.all(20),
                child: const Text('Carregando Informações... ',
                    style: TextStyle(
                        fontSize: 16
                    ))
            ): Container(),
            loading? const CircularProgressIndicator(
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
            ): Container(),
            !loading? Container(
                margin: const EdgeInsets.all(20),
                child: ElevatedButton(
                    onPressed: (){},
                    child: const Text('Tentar novamente'),
                )
            ): Container(),
          ],
        )
      )
    );
  }
}