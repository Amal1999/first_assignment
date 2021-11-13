import 'experiences.dart';
class Personne{
  String name;
  String phone;
  String email;
  String profilDescription;
  List<String> skills;
  List<Experiences> experiences;
  Personne({this.name="",this.phone="",this.email="",
    this.profilDescription="",this.experiences= const [],this.skills=const []});
}