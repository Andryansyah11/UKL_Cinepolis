import 'package:cinepolis/views/homepage.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[10],
        appBar: AppBar(
          forceMaterialTransparency: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Column(children: [
          Container(
              padding: EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                      'popcorn.png',
                      height: 200,
                    )),
                    SizedBox(height: 10),
                    Text(
                      "Hai Moviegoers!",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800, color: Color.fromARGB(255, 27, 28, 115)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sudah siap merasakan pengalaman menonton yang tidak telupakan?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 27, 28, 115),
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Email or WhatsApp Number",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Email or WhatsApp Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Password",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.check_box_outlined,color: Color.fromARGB(255, 27, 28, 115),
                          ),
                        ),
                        Expanded(
                          child: Text(
                              "Ya, saya menerima syarat dan ketentuan yang berlaku"),
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // Aksi untuk "Forgot Password"
                        },
                        child: const Text(
                          "Forgot Password",
                          style: TextStyle(color: Color.fromARGB(255, 27, 28, 115),
                        ),
                      ),
                    ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 27, 28, 115),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ), onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));}, 
                      child: Text("Login", style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Belum punya akun?"),
                          TextButton(
                            onPressed: () {
                              // Aksi untuk "Daftar"
                            },
                            child: Text("Daftar Disini", style: TextStyle(color: Color.fromARGB(255, 27, 28, 115),fontWeight: FontWeight.bold),),
                          )
                        ],
                      )
                  ])),
        ]));
  }
}
