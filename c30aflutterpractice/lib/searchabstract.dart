abstract class Search {
  bool search(List<int> arr, int searchvalue);
}

class LinearSearch extends Search {
  @override
  bool search(List<String> arr, int searchvalue) {
    return false;
  }
}

class BinarySearch extends Search {
  @override
  bool search(List<String> arr, int searchvalue) {
    return false;
  }
}

void main() {
  var binary = BinarySearch();
  binary.search([1, 2, 3, 4, 5], 4);

  var linear = LinearSearch();
  linear.search([2, 4, 6, 3, 8], 2);
}
