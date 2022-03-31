class Service {
  String title;
  String details;
  String imageurl;

  Service(this.title, this.details, this.imageurl);

  static List<Service> generateservices() {
    return [
      Service('mustapha services', 'just we can do it  ', 'assets/paul.jpg'),
      Service('paul services', 'just we can do it  ', 'assets/paul.jpg'),
      Service('paul services', 'just we can do it  ', 'assets/paul.jpg'),
      Service('paul services', 'just we can do it  ', 'assets/paul.jpg'),
      Service('paul services', 'just we can do it  ', 'assets/paul.jpg'),
      Service('paul services', 'just we can do it  ', 'assets/paul.jpg'),
    ];
  }
}
