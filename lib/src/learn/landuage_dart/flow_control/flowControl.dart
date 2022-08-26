import 'dart:developer';

void main() {
  /// Flow Control: Điều khiển luồng

  /// if(condition) { statement }
  /// else { statement };
  // var isHungry = true;
  // if (!isHungry) {
  //   print("IsHungry is True => in ra thông tin");
  // } else {
  //   print('IsHungry is Fasle => in ra thông tin sai');
  // }

  /// if(condition) { statement }
  /// else if (condition) { statement };
  /// else { statement };
  ///
  /// Ternary Operator
  /// condition ? statementTrue : statementFalse;
  // var a = 2;
  // var b = 5;
  // var result = a > b ? a : b;
  // print(result);

  /// For Loop
  /// for ( iterator<người lặp lại> ) { statement };
  // for (var i = 0; i <= 5; i++) {
  //   print('Lần in ra thứ $i');
  // }

  /// With index
  // var numList = [1, 'hai', 3, 4, 'năm', 6];
  // for (var i = 0; i < numList.length; i++) {
  //   print('Number List ${numList[i]}');
  // }

  /// For-in loop // Lấy luôn giá trị phần tử theo thứ tự index trong list ( lấy phần tử )
  /// Khác với ngôn ngữ JS là For-in lấy index For-of lấy phần tử
  /// Without index
  // for (var i in numList) {
  //   print('Lấy luôn value Number List $i');
  // }

  /// Conditions with Loops
  // var intList = [5, 6, 3, 8, 2, 10, 11, 2, 1, 9, 14];
  // for (var item in intList) {
  //   if (item % 2 == 0) {
  //     print('$item Đây là số nguyên chia hết cho 2 không dư');
  //   }
  // }

  /// While loop
  /// while (condition) { statement }
  // var count = 1;
  // while (count <= 10) {
  //   print("Vòng lặp while sẽ dừng khi đến 10, hiện tại là: $count");
  //   count++;
  // }

  /// Do While loop
  /// do { statement } while (condition)
  // var open = true;
  // do {
  //   print('Vui lòng mở cửa <Door Status> : $open');
  //   open = false; // forget this line will end infinite loop <dòng này sẽ kết thúc vòng lặp vô hạn>
  // } while (open);

  /// Break, Continue
  // for (var i = 0; i < 5; i++) {
  //   if (i == 2) {
  //     print('Break làm tạm dừng mất rồi $i');
  //     break;
  //   } else {
  //     print('In ra tiếp nào $i');
  //   }
  // }

  // for (var i = 0; i < 5; i++) {
  //   if (i == 2) {
  //     continue; // skip
  //   } else {
  //     print('Xem số nào không bị bỏ qua $i');
  //   }
  // }

  /// Switch, Case
  var day = DateTime.now().weekday.toString();
  log(day);
  switch (day) {
    case '1':
      print('$day --> Hôm nay là thứ hai');
      break;
    case '2':
      print('$day --> Hôm nay là thứ ba');
      break;
    case '3':
      print('$day --> Hôm nay là thứ tư');
      break;
    case '4':
      print('$day --> Hôm nay là thứ năm');
      break;
    case '5':
      print('$day --> Hôm nay là thứ sáu');
      break;
    case '6':
      print('$day --> Hôm nay là thứ bảy');
      break;
    case '7':
      print('$day --> Hôm nay là chủ nhật');
      break;
    default:
      print('$day --> Không phân biệt được đây là thứ mấy');
      break;
  }

  /// Assertion ( Quả quyết )
  /// assert(condition, optional message) // dùng để kiểm tra các điều kiện trong quá trình debug và bị bỏ qua khi sản phẩm được phát hành;
  var variable;
  print(variable);
  assert(variable != null, 'variable is null');
  // nếu condition = true => assert sẽ không làm gì, chương trình vẫn thực hiện bình thường || ngược lại sẽ thực hiện in ra thông báo lỗi
  variable = 5;
  print(variable);

  // Ví dụ như
  if (variable != null) {
    print('not null');
  } else {
    variable = 5;
    print(variable);
  }
}
