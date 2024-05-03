// ignore_for_file: unnecessary_this

class Doctor {
  String _name = "";
  String _crm = "";
  List<String> _knowledgeList = [];
  bool _emergency = false;

  Doctor(this._name, this._crm, this._knowledgeList, this._emergency);

  String get name => this._name;
  set name(String value) => this._name = value;
  get crm => this._crm;
  set crm( value) => this._crm = value;
  get knowledgeList => this._knowledgeList;
  set knowledgeList( value) => this._knowledgeList = value;
  get emergency => this._emergency;
  set emergency( value) => this._emergency = value;
}