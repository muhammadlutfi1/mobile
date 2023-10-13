Future<List<int>> multiplyAsync(List<int> data, int multiplier) async {
  List<int> result = [];

  // Loop through the data asynchronously
  for (int element in data) {
    // Simulate an asynchronous operation, e.g., API call, by using Future.delayed
    await Future.delayed(Duration.zero, () {
      int multipliedValue = element * multiplier;
      result.add(multipliedValue);
    });
  }

  return result;
}

void main() async {
  // Contoh penggunaan fungsi:
  List<int> data = [1, 2, 3, 4, 5];
  int multiplier = 2;

  List<int> result = await multiplyAsync(data, multiplier);
  print(result); // Output: [2, 4, 6, 8, 10]
}
