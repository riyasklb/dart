void main() {
  var numbers = [2, 5, 7, 9, 4, 0, 6];
  var target = 10;
  var result = twonumbersum(numbers, target);

  for (var pair in result) {
    print(pair);
  }
}

twonumbersum(List<int> data, int target) {
  // Use a set to track the numbers we have seen
  var seenNumbers = <int>{};

  for (var num in data) {
    print('${num}num');
    int match = target - num;

    if (seenNumbers.contains(match)) {
      return [num, match];
    } else {
      seenNumbers.add(num);
    }
  }

  return []; // Return an empty list if no such pair is found
}
