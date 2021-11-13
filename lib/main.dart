import 'package:first_assignment/Classes/experiences.dart';
import 'package:first_assignment/Classes/personne.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {

  Personne _personne= Personne(name: 'Valentine guérin',
  email: "sammari_a@outlook.fr", phone: "04 70 45 67 09",
  profilDescription: 'Je suis une spécialiste en ressources humaines '
      +'avec plus de 5 ans d\'expérience dans le recrutement, '
          +'la mise en oeuvre de programmes, les systèmes techniques et'
          +' l\'analytique du personnel.',
  skills:[
    "Formation et développement des employés",
    "Meilleures pratiques de recrutement",
    "Mécanisme souple appliqué aux RH",
    "Les systèmes informatiques liés aux RH et science de données "
  ],
  );

  List<Experiences> _experiences= [
    Experiences(title: "Directrice générale des RH",date: "Mars 2018 à présent",description: " S'assurer un excellent niveau"
        +" de participation du personnel. Offre un accompagnement du personnel."+
    " Supervise le système d'information des RH."+" Contribue à la planification organisationnelle")
    ,Experiences(title: "Généraliste en ressources humaines",date: "Février 2015 - Mars 2018",description: " Facilite l'embauche des nouveaux employés."
        +" Travaille étroitement avec le service de la paie et gère le programme de l'aide sociale."+
    " Organise et anime des formations du personnel")
    ,Experiences(title: "Généraliste en ressources humaines",date: "Février 2015 - Mars 2018",description: " Facilite l'embauche des nouveaux employés."
        +" Travaille étroitement avec le service de la paie et gère le programme de l'aide sociale."+
    " Organise et anime des formations du personnel"),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.width*0.08,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(_personne.name.toUpperCase(),
                          style: TextStyle(
                              color: Color(0xFF6170b2),
                              fontSize: MediaQuery.of(context).size.width*0.06,
                              fontWeight: FontWeight.bold
                          ),),
                        SizedBox(height: MediaQuery.of(context).size.width*0.02,),
                        Text('Téléphone : ${_personne.phone}',
                          style: TextStyle(
                            color: Color(0xFF6170b2),
                          ),),
                        SizedBox(height: MediaQuery.of(context).size.width*0.02,),
                        Text('E-mail : ${_personne.email}',
                          style: TextStyle(
                            color: Color(0xFF6170b2),
                          ),),
                      ],
                    ),
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage("./assets/cv.jpg"),

                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.width*0.04,),

              Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.07,
                      vertical: MediaQuery.of(context).size.width*0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Profil ".toUpperCase(),style: TextStyle(
                              color: Color(0xFF202c63),
                              fontWeight: FontWeight.w500,
                              fontSize: MediaQuery.of(context).size.width*0.05
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*0.04,),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
                        child: Text(_personne.profilDescription,
                        style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width*0.035,

                        ),),
                      )
                    ],
                  )
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.07,
                      vertical: MediaQuery.of(context).size.width*0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Compétences principales ".toUpperCase(),
                        style: TextStyle(
                            color: Color(0xFF202c63),
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width*0.05
                        ),
                      ),

                      SizedBox(height: MediaQuery.of(context).size.width*0.04,),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for(int i=0;i<_personne.skills.length;i++)
                                Container(
                                  child:
                                  Text('- ${_personne.skills[i]}'),
                                )
                            ],
                          )
                      ),

                    ],
                  )
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.07,
                      vertical: MediaQuery.of(context).size.width*0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Expérience professionnelle ".toUpperCase(),
                        style: TextStyle(
                            color: Color(0xFF202c63),
                            fontWeight: FontWeight.w500,
                            fontSize: MediaQuery.of(context).size.width*0.05
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width*0.04,),
                      Container(
                          margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.04),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for(int i=0;i<_experiences.length;i++)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: MediaQuery.of(context).size.width*0.02,),
                                    Container(
                                      child:
                                      Text(_experiences[i].title,style:
                                      TextStyle(
                                          color: Color(0xFF9189b7),
                                        fontWeight: FontWeight.bold,
                                        fontSize: MediaQuery.of(context).size.width*0.045
                                      ),),

                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.width*0.02,),
                                    Container(
                                      child:
                                      Text(_experiences[i].date.toUpperCase(),style:
                                      TextStyle(
                                          color: Color(0xFF9189b7),
                                          fontWeight: FontWeight.bold,
                                          fontSize: MediaQuery.of(context).size.width*0.035
                                      ),),

                                    ),
                                    SizedBox(height: MediaQuery.of(context).size.width*0.02,),
                                    for(int j=0;j<_experiences[i].description.split(".").length;j++)
                                      Container(
                                        child:

                                            Column(
                                              children: [
                                                Text('\u2022 ${_experiences[i].description.split(".")[j]}'
                                                ),
                                                SizedBox(height: MediaQuery.of(context).size.width*0.02,),

                                              ],
                                            )

                                      ),
                                  ],
                                )
                            ],
                          )
                      ),

                    ],
                  )
              ),

            ],
          ),
        )
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
