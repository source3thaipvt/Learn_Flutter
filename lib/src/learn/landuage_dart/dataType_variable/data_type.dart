/// This is main function

void main() {
  ///1. This is a comment ( Đây là 1 bình luận) comment

  ///2. Formula(Công thức): Type Identifier = Initial Value
  // int firstInteger = 1;
  // print(firstInteger);
  // firstInteger = 2;
  // print(firstInteger);

  ///3. Everything(Mọi điều) in Dart is object
  // Reference(tham chiếu) type & value type
  // int secondInteger;
  // // print(secondInteger); // null -> Reference to nothing
  // secondInteger = 1;
  // print(secondInteger);
  // int thirdInteger = 2;
  // secondInteger = thirdInteger;
  // print(secondInteger);
  // print(thirdInteger);

  ///4. Rule for identifier (Quy tắc cho số nhận dạng ) Cách đặt tên biến (variable)
  // Lower camel case
  // int 1firstInteger = 1; // Sai
  // int $secondInteger = 2; // Đúng // nhưng không dùng với quy cách đặt tên
  // int if = 2; // Sai
  // int _thirdInteger = 3; // Make variable private (Đặt biến ở chế độ riêng tư)
  // int fourthInteger = 4; // Đúng
  // int FourthInteger = 4; // Sai

  ///5. Number
  // num firstInteger = 1;
  // num firstDouber = 1.0;

  // print(firstInteger.runtimeType);
  // firstInteger = 1.0;
  // print(firstInteger.runtimeType);

  // int secondInteger = 1;
  // secondInteger = 1.0; // không thể gán giá trị double do đã định kiểu int

  // Integer -2, 0, 100
  // int first1Integer = -2;
  // int second1Integer = 0;
  // int third1Integer = 100;

  // // Double -1.0, 10.0, 1
  // double first1Double = -1.0;
  // double second1Double = 10.0;
  // double third1Double = 1; //memory allocated for double large than int

  ///6. Boolean
  // bool isEat = true;
  // print(isEat);
  // bool isHungry = false;
  // print(isHungry);

  ///7. String
  // String firstStr = "Hello";
  // String secondStr = 'Ruize';
  // String thirdStr = "It's a good day";
  // String fourthStr = 'It\'s a good day';

  // String multiLine = """Hello
  // World
  // !""";
  // print(multiLine);

  // ///8. String Concatenation(Sự kết hợp)
  // print(firstStr + ' ' + secondStr + ' ' + thirdStr);

  // ///9. String Interpolation(Phép nội suy)
  // print('Xin chào $secondStr Ăn đờ tent ${1 + 1}'); // {} for expression

  // var myName = "Ruize";
  // print(myName.runtimeType); //String
  // myName = 1; // type is String

  // var integer = 1;
  // print(integer.runtimeType); // int

  ///10. Compile-time -> Human read code into machine code
  /// Run-time -> execute(Thực thi) the code
  ///
  /// const & final
  // const pi = 3.14; // Lower case is prefer by Dart team
  // pi = 3.1415926; // không thể gán giá trị cho biến pi, giá trị(là 1 hằng số) ban đầu không thể thay đổi

  // final name = "Ruize"; // Biến có final chỉ được đặt một lần
  // name = "River"; // không thể gán giá trị cho biến name, giá trị(là 1 hằng số) ban đầu không thể thay đổi

  // const constTime = DateTime.now(); // each time will be difference (mỗi lần sẽ khác nhau) nên giá trị không thể là hằng số
  // final finalTime = DateTime.now();

  ///11. dynamic :  là 1 kiểu dữ liệu động
  // dynamic magic = 1;
  // magic = 1.0;
  // magic = "Magic";

  // var str = "1";
  // str = 1; // lỗi
}
