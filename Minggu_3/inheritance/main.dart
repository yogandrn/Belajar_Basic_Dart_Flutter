import 'human.dart';
import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';

void main(List<String> args) {
  ArmorTitan armor = new ArmorTitan();
  AttackTitan attack = new AttackTitan();
  BeastTitan beast = new BeastTitan();
  Human human = new Human();

  armor.powerPoint = 3;
  attack.powerPoint = 4;
  beast.powerPoint = 4;
  human.powerPoint = 5;

  print("Armor Titan Power Point: ${armor.powerPoint}");
  print("Armor Titan : ${armor.terjang()}");
  print("Attack Titan Power Point: ${attack.powerPoint}");
  print("Attack Titan : ${attack.punch()}");
  print("Beast Titan Power Point: ${beast.powerPoint}");
  print("Beast Titan : ${beast.lempar()}");
  print("Human Power Point : ${human.powerPoint}");
  print("Human : ${human.killAllTitan()}");
}
