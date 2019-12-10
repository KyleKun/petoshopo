class Customer{

  String _name;
  String _telephone;
  String _petName;
  String _petBreed;
  String _maskTelephone;
  String _urlImage;

  String get urlImage => _urlImage;

  set urlImage(String urlImage) {
    _urlImage = urlImage;
  }

  String get maskTelephone => _maskTelephone;

  set maskTelephone(String maskTelephone) {
    _maskTelephone = maskTelephone;
  }

  String get petBreed => _petBreed;

  set petBreed(String petBreed) {
    _petBreed = petBreed;
  }

  String get petName => _petName;

  set petName(String petName) {
    _petName = petName;
  }

  String get telephone => _telephone;

  set telephone(String telephone) {
    _telephone = telephone;
  }

  String get name => _name;

  set name(String name) {
    _name = name;
  }



}