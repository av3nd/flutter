void main(){

  // printing hello world 10 times
  //for is especially for count specific type problem
  for(int i = 0; i<10; i++){
    print("hello world");
  }


 // where as while is for condition oriented problems
 //  that means if condition will be false then the loop will not execute

  int num =5;
  // while condition only work if its condition is true
  while(num<=55){
    print("num is $num");
    num++; //num++ is short form of num = num + 1 or num+=1 it increase the number by one and stores it where it was
  }

  //  but in the do while loop it will be executed even if the condition is true or false
  do{
    print("Num is $num");
  }while(num<50);
}