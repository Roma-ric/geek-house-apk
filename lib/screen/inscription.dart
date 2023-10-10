import 'package:flutter/material.dart';

class Inscription extends StatefulWidget {
  const Inscription({super.key});

  @override
  State<Inscription> createState() => _Inscription();
}

class _Inscription extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(

              ),
              child: const Image(image: AssetImage("build/images/icone.png"),),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Bienvenue sur notre application mobile Geek House",
              style:
                  TextStyle(fontSize: 15, fontFamily: AutofillHints.birthday),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                //Mettre du padding
                padding: const EdgeInsets.only(
                    left: 20.0, top: 10, right: 20, bottom: 10),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Nom d'utilisateur ou adresse mail",
                        // hintText: "",
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true, //Pour cacher le mot de passe
                      decoration: const InputDecoration(
                          icon: Icon(Icons.password_sharp),
                          labelText: "Mot de passe",
                          // hintText: "",
                          suffixIcon: InkWell(
                            // onTap: (){},
                            child: Icon(Icons.remove_red_eye),
                          )),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          // onTap: (){},
                          child: Text(
                            "Mot de passe oublié?",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Se connecter"),
                        ),
                      ],
                    )
                  ],
                )),
          ],
        )),
      ),
    );
  }
}
