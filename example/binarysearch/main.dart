void main() {
  final list = <int>[];
  for (var i = 0; i < 100; i = i + 2) {
    list.add(i);
  }
  print(list);
  final val = binarySearch(list, 42);
  String result(String v) => "result: $v";
  print(result(val));
}

String confirmation(int mid, int guess, int count) {
  return "[step $count] mid:$mid guess:$guess";
}

String binarySearch(List list, int item) {
  var c = 1;
  var l = 0;
  var h = list.length - 1;
  while (l <= h) {
    var mid = (l + h) ~/ 2;
    var guess = list[mid];
    print(confirmation(mid, guess, c));
    if (guess == item) {
      return item.toString();
    } else if (guess > item) {
      mid--;
      h = mid;
    } else {
      mid++;
      l = mid;
    }
    c++;
  }
  return "None";
}
