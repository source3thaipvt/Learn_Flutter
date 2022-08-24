void main() {
  //1. Arithmetic Operators

  // var operand1 = 2;
  // var operand2 = 3;

  // print(operand1 + operand2);
  // print(operand1 - operand2);
  // print(-operand2);
  // print(operand1 * operand2);
  // print(operand1 / operand2); //Double
  // print(operand1 ~/ operand2); //Integer bị chia 0 (2/3=0.66=>0)
  // print(operand1 % operand2); //Integer dư 2 (2/3)

  // ///2. Prefix and Postfix Operators
  // var prefixIncrement = 10;
  // var postfixIncrement = 10;

  // print(++prefixIncrement); // 11 // 10+1 =11
  // print(prefixIncrement++); // 11 // 10

  // var prefixDecrement = 10;
  // var postfixDecrement = 10;

  // print(--prefixDecrement); // 9 // 10-1 = 9
  // print(prefixDecrement--); // 9 // 10

  ///3. Relational and Equality Operators (Toán tử quan hệ và bình đẳng)
  // var operand3 = 4;
  // var operand4 = 5;

  // print(operand3 > operand4); // false
  // print(operand3 < operand4); // true
  // print(operand3 >= operand4); // false
  // print(operand3 <= operand4); // true

  // print(operand3 == operand4); // false
  // print(operand3 != operand4); // true

  ///4. Type Test Operators
  // double type1 = 2.0;
  // int type2 = 6;
  // String type3 = "operator";
  // bool type4 = true;

  // print(type1 is int); // false
  // print(type2 is int); // true
  // print(type3 is String); // true
  // print(type4 is double); // false
  // print(type4 is! double); // true
  // print(type2 is! int); // false

  ///5. Compound Assignment Operators (Toán tử chuyển nhượng hợp chất)

  dynamic value1 = 2; // 0010
  dynamic value2 = 3; // 0011 // 0101
  dynamic value3;

  // print(value3 = value1); // 2
  // print(value3 += value1); // 2+2 = 4
  // print(value3 -= value1); // 4-2 = 2
  // print(value3 *= value1); // 2 * 2 = 4
  // print(value3 /= value1); // 4 / 2 = 2.0
  // print(value3 ~/= value1); // 2 /2 = 1 Lấy phần nguyên vd: 0.4 =0 // 7.4 = 7
  // print(value3 %= value2); // 1/3 = 1 Lấy phần dư vd: 7/8 = 7 // 2/8 = 2
  // print(value3 <<= value1); // mã nhị phân value3 = 0001(1) << 2 => 0100(4) // dịch chuyển theo chiều bit
  // print(value3 >>= value1); // mã nhị phân value3 = 0100(4) << 2 => 0001(1) // dịch chuyển theo chiều bit
  // print(value1 & value2); // mã nhị phân value1 = 0010(2) & 0011(3) => 0010(2) // so sánh trùng 1 thì lấy 1 không trùng thì lấy 0
  // print(value3 |= value1); // mã nhị phân value3 = 0001(1) | 0010(2) => 0011(3) // so sánh ở đâu có số 1 thì lấy 1
  // print(11 ^ 3); // mã nhị phân value3 = 0011(3) ^ 0010(2) => 0001(1) // so sánh trùng ở đâu có số 1 => 0 // không trùng thì không giữ nguyên số 1
  // //vd:1011(11) ^ 0011(3) = 1000(8)

  ///6. Logical Operators
  // dynamic value4 = true;
  // dynamic value5 = false;
  // var result = value4 && value5; // false

  // print(!value4); // false
  // print(!value5); // true
  // print(true | result); // true || result --> true
  // print(true || result); // true || result --> true
  // print(false || result); // false || result --> result = false
  // print(true && result); // true && result --> result = false
  // print(false & result); // true && result --> false
  // print(false && result); // true && result --> false

  ///7. Bitwise and Shift Operators
  // dynamic value6 = 2; // 0010
  // dynamic value7 = 3; // 0011

  // print(~ -value6); // 1 // value6 complement tức là đảo dấu và giá trị trừ thêm 1 vd: ~-2 = 2-1 = 1
  // print(~value7); // -4 // value7 complement tức là đảo dấu và giá trị trừ thêm 1 vd: ~3 = -3-1 = -4
  // print(value6 & value7); // 0010(2) ^ 0011(3) => 0010(2) // value6 AND value7
  // print(value6 | value7); // 0010(2) ^ 0011(3) => 0011(3) //value6 OR value7
  // print(value6 ^ value7); // 0010(2) ^ 0011(3) => 0001(1) //value6 XOR value7
  // print(value6 << 5); // 0010(2) << 2 => 1000(8) // value6 Shift Left 2 -> value6 * 2^5 (2^n)
  // print(value7 >> 2); // 0011(3) >> 2 => 0000(0) // value2 Shift Right 2 -> value7 / 2^2 (2^n)
}
