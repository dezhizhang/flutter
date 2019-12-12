// main() {
//   List list = ["red","yellow","pink","green"];
//   list.forEach((value) => {
//     print(value)
//   });
// }

main() {
  List list = [1,3,5,7,9];
  List newList = list.map((value){
    if(value >2) {
      return value * 2;
    }
    return value;
  }).toList();
  print(newList);
}