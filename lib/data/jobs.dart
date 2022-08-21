class Opportunity {
  String name;
  String organiser;
  String location; // Formatted "Ballarat East, VIC 3350"
  bool inPerson;
  String companyImgUrl; // Google search for company logos
  int previousAlumni;
  int days;

  Opportunity(
      {required this.name,
      required this.organiser,
      required this.location,
      required this.inPerson,
      required this.companyImgUrl,
      required this.previousAlumni,
      required this.days});
}

List<Opportunity> opsRecToYou = [
  Opportunity(
      name: 'PHP Developer Intern',
      organiser: 'Nexus Silicon Technologies',
      location: '6 Nexus Ct, Mulgrave VIC 3170',
      inPerson: false,
      companyImgUrl: 'https://nexussilicon.com.au/jobimg/s8.jpg',
      previousAlumni: 52,
      days: 8),
  Opportunity(
      name: 'Business Developer - Intern',
      organiser: 'Amazon Web Services (AWS)',
      location: '18/8 Exhibition St, Melbourne VIC 3000',
      inPerson: false,
      companyImgUrl:
          'https://th.bing.com/th/id/OIP.TbSXn2jIKNB-Nenc3_obiwHaHa?w=177&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7',
      previousAlumni: 89,
      days: 15),
  Opportunity(
      name: 'Photographer',
      organiser: 'Robert Cliff Master Jewellers',
      location: 'Shop/380a Castle St, Castle Hill NSW 2154',
      inPerson: true,
      companyImgUrl:
          'https://scontent.fsyd6-1.fna.fbcdn.net/v/t1.6435-9/69155452_2962668960414015_4617546819130359808_n.png?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=uagUIKBL4VQAX-mN0Lp&_nc_oc=AQlmEVpj4Y4vxggQFeRmvWjrmetz-O0CxXTshNHUQzB4YPAcX7M018Y_x_MjdbdIbu4&_nc_ht=scontent.fsyd6-1.fna&oh=00_AT_8RkDsjQxY8Y9TobohQ1B80Put-sucFiFpuRaKXmP6Bg&oe=63283748',
      previousAlumni: 23,
      days: 6)
]; // Need 3

List<Opportunity> opsRecByInstructors = [
  Opportunity(
      name: 'Traineeship',
      organiser: 'Centorrino Technologies',
      location: '640-642 Sydney Rd, Coburg VIC 3058',
      inPerson: true,
      companyImgUrl:
          'https://centorrinotechnologies.com/assets/images/lite-logo.png',
      previousAlumni: 44,
      days: 8),
  Opportunity(
      name: 'IT Support Technician',
      organiser: 'SimpleGenius',
      location: '47 Capel St, West Melbourne VIC 3003',
      inPerson: true,
      companyImgUrl:
          'https://static.wixstatic.com/media/0720ea_7794eb614c044b82b43e288657d87e52~mv2.png/v1/fill/w_525,h_96,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/WebSiteHeader.png',
      previousAlumni: 36,
      days: 13)
]; // Need 2

List<Opportunity> moreNearYou = [
  Opportunity(
      name: 'Kitchenhand',
      organiser: 'Ballarat Wildlife Park',
      location:
          '250 Fussell St, Ballarat East VIC 3350 (No entry on, Richards St), Ballarat East VIC 3350',
      inPerson: true,
      companyImgUrl:
          'https://wildlifepark.com.au/wp-content/uploads/2017/01/BWP_Logo-1.png',
      previousAlumni: 8,
      days: 3),
  Opportunity(
      name: 'Barista',
      organiser: 'Eureka Centre Ballarat',
      location: '102 Stawell St S, Ballarat Central VIC 3350',
      inPerson: true,
      companyImgUrl:
          'https://assets.livelifegetactive.com/uploads/partner640x640-city-of-ballarat.png',
      previousAlumni: 24,
      days: 4),
  Opportunity(
      name: 'Crew member',
      organiser: 'Hungry Jacks',
      location: '87 Victoria St, Ballarat East VIC 3350',
      inPerson: true,
      companyImgUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/HungryJacksLogo_RGB.svg/1920px-HungryJacksLogo_RGB.svg.png',
      previousAlumni: 21,
      days: 3),
  Opportunity(
      name: 'Nursing Assistant',
      organiser: 'Geoffrey Cutter Centre',
      location: 'Windsor Gardens, East, Kenny St, Ballarat East VIC 3350',
      inPerson: true,
      companyImgUrl:
          'https://www.bhs.org.au/media/5ildj1cc/bhs-aged-care-logo-landscape-01-1.png',
      previousAlumni: 16,
      days: 9)
]; // Need 4
