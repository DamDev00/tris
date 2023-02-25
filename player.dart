import 'options.dart';

class Player{
  String? _name;
  int? _id;
  String? _symbol;
  bool? win;

  Player({required String? name, required String? symbol, int? id}){
    this._name = name;
    this._symbol = symbol;
    if(id != null){
      this._id = id;
    }
    this.win = false;
  }

  String get getName{return this._name.toString();}
  String get getSymbol{return this._symbol.toString();}

  bool get hasWin{
    if(this.win!){
      return true;
    } else {
      return false;
    }
  }

  int get getId{
    
    final resultError = -1;

    if(this._id == null || this._id.toString().isEmpty){
      return resultError;
    } else {
      return this._id!;
    }
  }  

  /*@override
  bool operator == (Player player){
    if(this._name == player.getName){
      return true;
    } else {
      return false;
    }
  }*/

}