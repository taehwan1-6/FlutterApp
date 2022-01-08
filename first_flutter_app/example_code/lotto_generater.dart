// p.55
// 로또 번호 생성기 만들기

import 'dart:math' as math;
import 'dart:collection';

void main() {
  var rand = math.Random();
  HashSet<int> lotteryNumber = HashSet();

  while (lotteryNumber.length < 6) {
    lotteryNumber.add(rand.nextInt(45) + 1);
  }
  print(lotteryNumber);
}

// void main() {
//   int i;
//   int number;
//
//   for (i=0; i<6; i++) {
//     number = Random().nextInt(100) + 1;
//     print(number)
//   }
// }

// void main() {
//   var rand = math.Random();
//
//   int number;
//
//   for (int i=0; i<6; i++) {
//     number = rand.nextInt(100) + 1;
//     print(number);
//   }
// }
