void main(){
  var a = 100;
  var b= 52;
  // every condition will be checked if it is not true suppose if the value of a was 40 then else will be executed
  // if value is 53 a>50 will be true
  if(a>200){
    print("it is greater than 200");
  }else if(a>50){
    print("it is greater than 50");
  }else if(a>50){
    print("it is greater than 50");
  }else{
    print("it does not meet the condition");
  }


  //nested if else
  if(a>100){
    print("it is greater than 100");
    // cond 1 will be true
    if(b>50){
      // only if cond 2 is true
      print("it is greater than 50");

    }
  }
  // if the nested loop is large then if one condition is false then the whole nested confition will be false
  //  remember it takes only one condtion for the if else statement to be true


  if(a>200 || b >50){
    print("condition is true");
  }

  if(a>200 && b>100){
    // because of and && operator cond 1 and cond 2 is true the it will be printed
    print("Block 1");
  }else if(a<50){
    // cond is true then it will be printed
    print("Block 1");
  }else if(a>80){
    // cond is true then it will be printed
    print("Block 1");
  }else if(a==500){
    // cond is true then it will be printed
    print("Block 1");
  }else{
    // if all cond are flase then it will be printed
    print("Block else");
  }

}