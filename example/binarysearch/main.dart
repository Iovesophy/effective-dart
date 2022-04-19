void main() {
  print("binary search start");
  final list = <int>[];
  for (var i = 0; i < 100; i++) {
      list.add(i);
  }
  print("*** result: ${binarySearch(list, 29)} ***");
}

confirmation(int mid, int guess, int count) {
  print("[step ${count}]");
  print("mid:${mid}");
  print("guess:${guess}");
}

binarySearch(List l, int item) {
  var count = 1;
  var low = 0;
  var high = l.length - 1;

  while (low <= high) {
    var mid = ((low + high) / 2).toInt();
    var guess = l[mid];
    confirmation(mid, guess, count);

    if (guess == item) {
      return item;
    } else if (guess > item) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }

    count++;
  }

  return null;
}
