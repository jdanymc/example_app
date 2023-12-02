import 'package:example_app/models/person_model.dart';

class ServicesData {
  Future<Persona> getProfile() async {
    return Future.delayed(Duration(seconds: 5), () {
      return Persona(
        bViveEnPeru: true,
        iEdad: 50,
        sDni: "54521548",
        sName: "Pablo",
        sSexo: "M",
        dRating: 8.5,
        iFollowers: 25,
        iLikes: 500,
      );
    });
  }

  Future<List<Persona>> getListProfile() async {
    return Future.delayed(Duration(seconds: 5), () {
      return [
        Persona(
            bViveEnPeru: true,
            iEdad: 20,
            sDni: "45871258",
            sName: "Juan Perez",
            sSexo: 'M',
            dRating:8.5,
            iFollowers: 25,
            iLikes:500),
        Persona(
            bViveEnPeru: true,
            iEdad: 60,
            sDni: "55221144",
            sName: "Maria Ibañez",
            sSexo: 'F',
            dRating: 9.2,
            iFollowers: 15,
            iLikes: 150),
      ];
    });
  }
}
