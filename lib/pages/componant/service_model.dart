class Service {
  String title;
  String details;
  String imageurl;

  Service(this.title, this.details, this.imageurl);

  static List<Service> generateservices() {
    return [
      Service('mustapha services', 'bla bla bla bla ', 'assers/0.png'),
    ];
  }
}
