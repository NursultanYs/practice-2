import 'dart:math';

void main() {
  num randomNumb = Random().nextInt(490001) + 10000;
  String percent = '';
  if (randomNumb >= 10000 && randomNumb <= 100000) {
    randomNumb = randomNumb * 0.05;
    percent = '5%';
  } else if (randomNumb > 100000 && randomNumb <= 200000) {
    randomNumb = randomNumb * 0.07;
    percent = '7%';
  } else if (randomNumb > 200000 && randomNumb <= 500000) {
    randomNumb = randomNumb * 0.1;
    percent = '10%';
  } else {
    print('Неправильное число');
  }

  if (percent.isNotEmpty) {
    randomNumb % 1 == 0
        ? print("Сумма налога ${randomNumb.toStringAsFixed(0)}")
        : print("Сумма налога ${randomNumb.toStringAsFixed(2)}");

    print("Процент налога $percent");
  }

  //Месяц и время года
  int mySecondRandom = Random().nextInt(12) + 1;
  String season = '';
  List<String> months = [
    "Январь",
    "Февраль",
    "Март",
    "Апрель",
    "Май",
    "Июнь",
    "Июль",
    "Август",
    "Сентябрь",
    "Октябрь",
    "Ноябрь",
    "Декабрь"
  ];
  if (mySecondRandom >= 1 && mySecondRandom <= 2 || mySecondRandom == 12) {
    season = "Зима";
  } else if (mySecondRandom > 2 && mySecondRandom < 6) {
    season = "Весна";
  } else if (mySecondRandom >= 6 && mySecondRandom < 9) {
    season = "Лето";
  } else if (mySecondRandom >= 9 && mySecondRandom < 12) {
    season = "Осень";
  }
  if (season.isNotEmpty) {
    print("Месяц : ${months[mySecondRandom - 1]}");
    print("Время года : $season");
  } else {
    print("Число неккоректное");
  }
}
