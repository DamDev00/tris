
import 'dart:io';

import 'options.dart';
import 'player.dart';

class Field{

  final int _row = 11;
  final int _col = 10;
  List<List<String>>? _matrix;

  Field(){
    this._matrix = [];
    generateField();
  }

  void generateField(){
    for(int i = 0; 11 > i; i++){
      List<String> column = [];
      for(int j = 0; 10 > j; j++){
        if(i == 3 || i == 6){
          column.add('-');
        } else if(j == 3 || j == 6){
          column.add('|');
        } else {
          column.add(' ');
        }
      }
      this._matrix?.add(column);
    }
  }

  List<List<String>> get getField{return this._matrix!;}

  void printField(){
    for(int i = 0; this._row > i; i++){
      print('${_matrix?[i]}');
    }
  }

  bool win({required Player player}){
    if(this._matrix?[1][1] == (player.getSymbol) && this._matrix?[1][4] == (player.getSymbol)
        && this._matrix?[1][7] == (player.getSymbol)){
          return true;
        } else if (this._matrix?[1][1] == (player.getSymbol) && this._matrix?[4][4] == (player.getSymbol)
        && this._matrix?[8][7] == (player.getSymbol)){
          return true;
        } else if (this._matrix?[1][1] == (player.getSymbol) && this._matrix?[4][1] == (player.getSymbol)
        && this._matrix?[8][1] == (player.getSymbol)){
          return true;
        } else if (this._matrix?[1][4] == (player.getSymbol) && this._matrix?[4][4] == (player.getSymbol)
        && this._matrix?[8][4] == (player.getSymbol)){
          return true;
        } else if (this._matrix?[1][7] == (player.getSymbol) && this._matrix?[4][7] == (player.getSymbol)
        && this._matrix?[8][7] == (player.getSymbol)){
          return true;
        } else if (this._matrix?[4][1] == (player.getSymbol) && this._matrix?[4][4] == (player.getSymbol)
        && this._matrix?[4][7] == (player.getSymbol)){
          return true;
        } else if (this._matrix?[8][1] == (player.getSymbol) && this._matrix?[8][4] == (player.getSymbol)
        && this._matrix?[8][7] == (player.getSymbol)){
          return true;
        } else if (this._matrix?[1][7] == (player.getSymbol) && this._matrix?[4][4] == (player.getSymbol)
        && this._matrix?[8][1] == (player.getSymbol)){
          return true;
        }
        else {
          return false;
        }
  }

  bool choose(dynamic choose, String symbol){

    if(choose == Position.TOP_LEFT.index + 1 || choose == (Position.TOP_LEFT.index + 1).toString()){

      if(this._matrix?[1][1] == ' '){
        this._matrix?[1][1] = symbol;
        return true;
      } else {
        return false;
      }

      this._matrix?[1][1] = symbol;

    } else if(choose == Position.TOP_CENTER.index + 1 || choose == (Position.TOP_CENTER.index + 1).toString()){
      if(this._matrix?[1][4] == ' '){
        this._matrix?[1][4] = symbol;
        return true;
      } else {
        return false;
      }
      this._matrix?[1][4] = symbol;

    } else if(choose == Position.TOP_RIGHT.index + 1 || choose == (Position.TOP_RIGHT.index + 1).toString()){
      if(this._matrix?[1][7] == ' '){
        this._matrix?[1][7] = symbol;
        return true;
      } else {
        return false;
      }
      this._matrix?[1][7] = symbol;

    } else if(choose == Position.CENTER_LEFT.index + 1 || choose == (Position.CENTER_LEFT.index + 1).toString()){
      if(this._matrix?[4][1] == ' '){
        this._matrix?[4][1] = symbol;
        return true;
      } else {
        return false;
      }
      this._matrix?[4][1] = symbol;
    } else if(choose == Position.CENTER_CENTER.index + 1 || choose == (Position.CENTER_CENTER.index + 1).toString()){
      if(this._matrix?[4][4] == ' '){
        this._matrix?[4][4] = symbol;
        return true;
      } else {
        return false;
      }
      this._matrix?[4][4] = symbol;
    } else if(choose == Position.CENTER_RIGHT.index + 1 || choose == (Position.CENTER_RIGHT.index + 1).toString()){
      if(this._matrix?[4][7] == ' '){
        this._matrix?[4][7] = symbol;
        return true;
      } else {
        return false;
      }
      this._matrix?[4][7] = symbol;
    } else if(choose == Position.LOW_LEFT.index + 1 || choose == (Position.LOW_LEFT.index + 1).toString()){
      if(this._matrix?[8][1] == ' '){
        this._matrix?[8][1] = symbol;
        return true;
      } else {
        return false;
      }
      this._matrix?[8][1] = symbol;
    } else if(choose == Position.LOW_CENTER.index + 1 || choose == (Position.LOW_CENTER.index + 1).toString()){
      if(this._matrix?[8][4] == ' '){
        this._matrix?[8][4] = symbol;
        return true;
      } else {
        return false;
      }
      this._matrix?[8][4] = symbol;
    } else if(choose == Position.LOW_RIGHT.index + 1 || choose == (Position.LOW_RIGHT.index + 1).toString()){
      if(this._matrix?[8][7] == ' '){
        this._matrix?[8][7] = symbol;
        return true;
      } else {
        return false;
      }
      this._matrix?[8][7] = symbol;
    } else {
      return false;
    }
  } 
}
