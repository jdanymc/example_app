import 'package:example_app/constants/constants.dart';
import 'package:example_app/models/person_model.dart';
import 'package:example_app/services/services_data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff181818),
          body: Column(
            children: [
              FutureBuilder(
                  //future: ServicesData().getProfile(),
                  future: ServicesData().getListProfile(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      List<Persona> auxPerson = snapshot.data;
                      //print(auxPerson.length);
                      return Column(children: [
                        ...auxPerson.map(
                          (e) => ProfileCard(
                              e.sName,
                              e.sDni,
                              e.iFollowers.toString(),
                              e.iLikes.toString(),
                              e.dRating.toString()),
                        ),
                      ]);
                    }
                    return Center(child: CircularProgressIndicator());
                  })
            ],
          )),
    );
  }
}

class ProfileCard extends StatelessWidget {
  String nombre;
  String dni;
  String folows;
  String likes;
  String rating;

  ProfileCard(this.nombre, this.dni, this.folows, this.likes, this.rating);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 15.0),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg"),
                    radius: 60.0,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nombre,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          dni,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white.withOpacity(0.6),
                          ),
                        ),
                        const Divider(),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column1("Followers", folows),
                              Column1("Likes", likes),
                              Column1("Rating", rating),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        "Chat",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Color(0xffee9b00)),
                      ),
                    ),
                  ),
                  VerticalDivider(),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Follow"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0a9396))),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
