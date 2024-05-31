void main() {
  var List = [2, 5, 7, 9, 4, 0, 6];
  var target = 10;
  var result = [];
  // var sortedlist = [];
  result = twonumbersum(List, target);
  for (int i = 0; i < result.length; i++) {
    print(result[i]);
  }
}

twonumbersum(List data, int target) {
  // Added return type List<int> and specified data type for target
  for (var i = 0; i < data.length; i++) {
    for (var j = i + 1; j < data.length; j++) {
      // Changed int to var for j
      if (data[i] + data[j] == target) {
        return [data[i], data[j]]; // Return a list containing the two numbers
      }
    }
  }
  return []; // Return an empty list if no such pair is found
}
