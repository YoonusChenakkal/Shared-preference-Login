import 'package:flutter/material.dart';

class home extends StatelessWidget {
  home(this.username, this.password, {super.key});
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Logged In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Text('User name :' + username),
            Text('Password :' + password),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: SizedBox(
                  width: 170,
                  child: ElevatedButton(
                      onPressed: () {
                      Navigator.pop(context);
                      },
                      child: Text('Reset'))),
             )
          ],
        ),
      ),
    );
  }
}
