// ignore_for_file: empty_constructor_bodies, unnecessary_, unused_field
class Car {
  String _owner = "";
  String _model = "";
  String _isTunned = "";
  List<String> _changesList = [];
  bool _isPriorized = false;

  Car(owner, model, isTunned, changesList, isPriorized) {
    _owner = owner;
    _model = model;
    _isTunned = isTunned;
    _changesList = changesList;
    _isPriorized = isPriorized;
  }

  get owner => _owner;

 set owner( value) => _owner = value;

  get model => _model;

 set model( value) => _model = value;

  get isTunned => _isTunned;

 set isTunned( value) => _isTunned = value;

   get changesList => _changesList;

 set changesList( value) => _changesList = value;

  get isPriorized => _isPriorized;

 set isPriorized( value) => _isPriorized = value;
}

