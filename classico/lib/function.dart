void main(){
  print('welcome to dart');
  myFunc();
  var myC = myClass();
  myC.printName();
  myC.PrintName("Avend");
  print(myC.Add(4, 5));
}

void myFunc(){
  print("this is a function");
}

// class with functions
class myClass{

  // constructor
  myClass(){
    print("myClass object is created");
  }

  // functions
  void printName(){
    print("hello from a function inside myclass");
  }

  void PrintName(String name){
    print(name);
  }

  int Add(int num1, int num2){
    int sum = num1 + num2;
    return sum;
  }
}