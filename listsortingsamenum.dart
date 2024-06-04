void main() {
  var list = [2, 5, 7, 7, 6, 9, 4, 0, 6, 6, 6];
  var target = 6;

  // Move all occurrences of the target value to the end of the list
  var modifiedList = moveTargetToEnd(list, target);

  // Print the modified list
  print(modifiedList);
}

moveTargetToEnd(List<int> data, int target) {
  List<int> result = [];
  int targetCount = 0;

  // Iterate through the original list
  for (var value in data) {
    if (value == target) {
      // Count occurrences of the target value
      targetCount++;
    } else {
      // Add non-target values to the result list
      result.add(value);
    }
  }

  // Add target values to the end of the result list
  for (var i = 0; i < targetCount; i++) {
    result.add(target);
  }

  return result;
}
