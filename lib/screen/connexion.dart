import 'package:flutter/material.dart';

class Connexion extends StatefulWidget {
  const Connexion({super.key});

  @override
  State<Connexion> createState() => _Connexion();
}

class _Connexion extends State<Connexion> {
  bool viewPassword = false;
  void setViewPassword() {
    viewPassword = !viewPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Center(
        child: Form(
          
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*Container(
              decoration: const BoxDecoration(

              ),
              child: const Image(image: AssetImage("build/images/icone.jpg"),),
            ),
            const SizedBox(
              height: 20,
            ),*/
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Bienvenue sur notre application mobile Geek House",
                style:
                    TextStyle(fontSize: 15, fontFamily: AutofillHints.birthday),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
                //Mettre du padding
                padding: const EdgeInsets.only(
                    left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
                child: Column(
                  children: [
                    TextFormField(
                      // keyboardType: TextInputType.emailAddress,
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
                      obscureText: viewPassword, //Pour cacher le mot de passe
                      //keyboardType: TextInputType.number,//Pour choisir le type d'entré
                      decoration: const InputDecoration(
                          icon: Icon(Icons.password_sharp),
                          labelText: "Mot de passe",
                          // hintText: "",
                          suffixIcon: Icon(Icons.remove_red_eye)),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Le mot de passe est obligatoire.";
                        } else if (value.length < 6) {
                          return "Le mot de passe doit contenir au moins 6 caractères.";
                        }
                        return null;
                      },
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
