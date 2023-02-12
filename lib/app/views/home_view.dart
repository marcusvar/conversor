import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 100),
          child: Column(children: [
            Image.asset(
              'assets/logo.png',
              width: 150,
              
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text('Real'),
                        ),
                        DropdownMenuItem(
                          child: Text('Dolar'),
                        ),
                      ],
                      onChanged: (value) {},
                    )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                print('TESTE!');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              child: Container(
                  width: double.infinity,
                  child: Text(
                    'CONVERTER',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
