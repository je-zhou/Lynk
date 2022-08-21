class Opportunity {
  String name;
  String organiser;
  String location; // Formatted "Ballarat East, VIC 3350"
  bool inPerson;
  String companyImgUrl; // Google search for company logos
  int previousAlumni;

  Opportunity(
      {required this.name,
      required this.organiser,
      required this.location,
      required this.inPerson,
      required this.companyImgUrl,
      required this.previousAlumni});
}

List<Opportunity> opsRecToYou = []; // Need 3

List<Opportunity> opsRecByInstructors = []; // Need 2

List<Opportunity> moreNearYou = []; // Need 4


