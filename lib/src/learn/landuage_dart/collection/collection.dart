void main() {
  /// Method // Function // Core
  ///1. Method: Called by object
  /// vd: print()
  ///2. Function: Có 1 bài dạy riêng về phần này
  ///3. Core (List | Set | Map)

  /// List ===========> https://api.dart.dev/stable/2.17.7/dart-core/List-class.html (tham khảo thêm các method)
  ///
  ///3.1 var listName = [element1, element2, element3, ..., elementn];
  // var list1 = [1, 2, "3"];
  // print(list1);

  ///3.2 Deprecated: không chấp nhận được // List() không còn được sử dụng nữa
  // var listName = List();
  // var list2 = List();
  // print(list2);

  ///3.3 Deprecated: không chấp nhận được
  // var listNmae = <T>List(); // T -> Generic type(Loại chung)
  // var list3 = List<int>();
  // print(list3);

  ///3.4 Empty list
  // var emptyList = <int>[];
  // print(emptyList);

  ///3.5 Index from 0 || Length of list
  // var listOfFruits = [
  //   'apple',
  //   'banana',
  //   'peach'
  // ]; // Khi array là typeData String thì không thể add data là typeData int
  // print(listOfFruits[1]);
  // print(listOfFruits.length);

  ///3.6 Add the single element to list
  // listOfFruits.add('mongo');
  // print(listOfFruits);

  ///3.7 Add the multiply element to list // Add được nhiều hơn
  // listOfFruits.addAll(['orange', 'storage']);
  // print(listOfFruits);

  ///3.8 Remove the element in list by index
  // listOfFruits.removeAt(0); // vị trí index trong list
  // print(listOfFruits);

  ///3.9 Find the index of element first
  /// Remove the element by the index
  // var findIndexList = listOfFruits.indexOf('orange');
  // print(findIndexList);
  // listOfFruits.removeAt(findIndexList);
  // print(listOfFruits);

  ///3.10 Remove all the element in list
  // listOfFruits.clear();
  // print(listOfFruits);

  ///3.11 The current elements of this iterable modified by toElement
  /// listName.map((iterator) => statement);
  // var editMapList = listOfFruits.map((e) => e + ' edit');
  // print(editMapList);
  // print(editMapList.toList());

  /// Set ===========> https://api.dart.dev/stable/2.17.7/dart-core/Set-class.html (tham khảo thêm các method)
  ///
  /// var set = {element1, element2, ..., elementn};
  // var set1 = {1, 2, 3}; // Set<int>
  // print(set1);

  /// var set = <T>{element1, element2, ..., elementn};
  // var set2 = <int>{1, 2, 3}; // Set<int>
  // Set<int> emptySet = {};
  // print(set2);
  // print(emptySet);
  // var emptyMap = {}; // this will create map
  // print([
  //   emptySet.runtimeType, // _CompactLinkedHashSet<int>
  //   emptyMap.runtimeType, // _InternalLinkedHashMap<dynamic, dynamic>
  // ]);

  /// Add the element
  // var setOfFruit = <String>{};
  // setOfFruit.add('apple');
  // setOfFruit.add('bananas');
  // setOfFruit.add('oranges');
  // print(setOfFruit);

  /// Add multiple element into set
  // var setOfFruits = {'apples', 'bananas', 'oranges'};
  // var twoMoreFruits = {'watermelon', 'grapes'};
  // setOfFruits.addAll({...twoMoreFruits, 'blues'});
  // print(setOfFruits);

  /// get the length of the set
  // print(setOfFruits.length);

  /// remove element from the set
  // setOfFruits.remove('blues');
  // print(setOfFruits);

  /// check the if element is exist in the set /// obj.contains/containsAll('value'); kiểm tra xem value có nằm trong obj hay không (return boolean)
  /// check whether(cho dù) a single item is in the set
  // print(setOfFruits.contains('grapes')); // true

  /// check whether multiple items are in the set
  // print(setOfFruits.containsAll(['watermelon', 'apples', 'blues'])); // false

  /// obj.intersection // Intersection Between Two Sets ( Giao điểm giữa 2 Sets)
  // final characters1 = <String>{'A', 'B', 'C'};
  // final characters2 = <String>{'A', 'E', 'F'};
  // final unionSet = characters1.intersection(characters2);
  // print(unionSet); // {'A'}

  /// obj.intersection // Intersection Between Two Sets ( Giao điểm giữa 2 Sets)
  // final characters3 = <String>{'A', 'B', 'D'};
  // final characters4 = <String>{'A', 'C', 'E', 'F'};
  // final unionSet2 = characters3.union(characters4);
  // print(unionSet2); // {'A', 'B', 'D', 'C', 'E', 'F'}

  ///Map ===========> https://api.dart.dev/stable/2.17.7/dart-core/Map-class.html (tham khảo thêm các method)
  ///
  /// obj.map // var map = {key: value, ...};
  // var capitals = {'a': 'Apples', 'b': 'Bananas', 'c': 'Choke'};
  // print(capitals); //{a: Apples, b: Bananas, c: Choke}

  // var emptyMap = {};
  // var emptyMap2 = Map();
  // print(emptyMap2); // {}

  // var map = Map<K, V>();
  var numbers = Map<int, String>();
  print(numbers);
  numbers.addAll(
      {1: 'Earth', 2: 'World', 3: 'Mercury', 4: 'Jupiter', 5: 'Saturn'});
  print(numbers);

  /// add key-value Pairs
  var numbers2 = Map<int, String>();
  numbers2[1] = 'one';
  numbers2[2] = 'two';
  numbers2[4] = 'four';
  print(numbers2);

  // Finding the Number of Pairs in a Map
  print(numbers2.length);

  // Accessing a Value
  print(numbers2[2]);

  // Checking a Key
  print(numbers2.containsKey(2));

  // Retrieving(Truy xuất/ lấy) all the keys
  var allKeys = numbers2.keys;
  print('Keys: $allKeys');

  // Retrieving(Truy xuất/ lấy) all the values
  var allValues = numbers2.values;
  print('Keys: $allValues');

  // Removing a Key-Value Pair
  numbers2.remove(2);
  print(numbers2); //{1: one, 4: four}
  numbers2.remove(3);
  print(numbers2); //{1: one, 4: four}
}
