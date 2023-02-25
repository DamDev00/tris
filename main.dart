import 'dart:io';
import 'options.dart';
import 'player.dart';
import 'field.dart';
import 'dart:math';
void main(List<String> args) {

  Random random = new Random();
  Field field = new Field();
  final PLAYERS = 2;
  int round = 0;

  List<String> names = ['Franco', 'Andrea', 'Giovanna', 'Lisa', 'Luca'];
  Player player1 = new Player(name: names[random.nextInt(names.length)], symbol: 'O', id: 1);
  Player player2 = new Player(name: names[random.nextInt(names.length)], symbol: 'X', id: 2);

  int r = 0;
  
  while(r == 0){
    r = random.nextInt(PLAYERS + 1);
  }

  Player playerThatsPlaying;

  if(r == 1){
    stdout.write('comincia il giocatore numero 1\n');
    playerThatsPlaying = player1;
  } else if (r == 2){
    stdout.write('comincia il giocatore numero 2\n');
    playerThatsPlaying = player2;
  } else {
    return;
  }

  while(!field.win(player: playerThatsPlaying)){
    var option;
    round += 1;

    if(round > 1){
      if(playerThatsPlaying.getId == player1.getId){
      playerThatsPlaying = player2;
    } else if(playerThatsPlaying.getId == player2.getId){
      playerThatsPlaying = player1;
    }
    }

    if(playerThatsPlaying.getId == player1.getId){
      print('turno di ${player1.getName} (1-9): ');
      option = stdin.readLineSync();
    } else if(playerThatsPlaying.getId == player2.getId){
      print('turno di ${player2.getName} (1-9): ');
      option = stdin.readLineSync();
    }

    try{
      bool resultChoose = field.choose(option, playerThatsPlaying.getSymbol);
      while(!resultChoose){
        print('la posizione scelta è occupata, ripetere: ');
        option = stdin.readLineSync();
        resultChoose = field.choose(option, playerThatsPlaying.getSymbol);
      }
    } catch(err){
      print('${err}');
      return;
    }
    if(field.win(player: playerThatsPlaying)){
      playerThatsPlaying.win = true;
    }

    field.printField();
  }

  if(player1.hasWin){
    stdout.write('\n\nHa vinto ${player1.getName}!');
  } else if(player2.hasWin){
    stdout.write('\n\nHa vinto ${player2.getName}!');
  } else {
    stdout.write('contesa');
  }

}