abstract class Search {
  bool search(List<int> arr, int searchvalue);
  String? printstring() {
    print("gelo");
  }
}

class LinearSearch extends Search {
  @override
  String? printstring() {
    return super.printstring();
  }

  @override
  bool search(List<int> arr, int searchvalue) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == searchvalue) {
        return true;
      }
    }
    return false;
  }
}

class BinarySearch extends Search {
  @override
  String? printstring() {
    return super.printstring();
  }

  @override
  bool search(List<int> arr, int searchvalue) {
    int left = 0;
    int right = arr.length - 1;

    while (left <= right) {
      int mid = left + (right - left) ~/ 2;

      if (arr[mid] == searchvalue) {
        return true;
      } else if (arr[mid] < searchvalue) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return false;
  }
}

void main() {
  var binary = BinarySearch();
  print(binary.search([1, 2, 3, 4, 5], 4));

  var linear = LinearSearch();
  print(linear.search([2, 4, 6, 3, 8], 2));
}
