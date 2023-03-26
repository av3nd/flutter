void main(){
  // list1
   var listNames = [10,20,30,40];
   listNames.add(50);

   // list2
   var names = [];
   names.add("Raman");
   names.add("ssadsa");
   names.add("sadsad");
   names.add("Ramdfdfan");

   // update lists item if you know the index
   names[2] = "Rameez";
   // merge two lists into one with addALl()
   // names.addAll(listNames);
   // print("$names");

   //insert at a specific position with insert()
   names.insert(2, "insert");
   names.insert(3, listNames);

   // remove and replace a specific index of
   listNames.replaceRange(0, 2, [123,123,32434,4545]);
   
   // remove elements from the list
   listNames.remove(40);
   listNames.removeAt(3);
   listNames.removeRange(0, 4);
   print("$listNames");

   // some important functions to print elments directly from a list
   print("length: ${listNames.length}");
   print("Reversed: ${listNames.reversed}");
   print("First: ${listNames.first}");
   print("Last: ${listNames.last}");
   print("Is Empty: ${listNames.isEmpty}");
   print("Is not Empty: ${listNames.isNotEmpty}");
   print("element of x index: ${listNames.elementAt(0)}");


}
  