
// String printInfo() {
//   return "周华建你好";
// }
// main() {
//   print(printInfo());
// }

// String printInfo() {
//   return "周大大你好";
// }

// main() {
//   print(printInfo());
// }

// String printInfo() {
//   return "你好周大大";
// }

// main() {
//   print(printInfo());
// }

// List printInfo() {
//   return ["111111","2222222","33333"];
// }

// main() {
//   print(printInfo());

// }

// List printInfo() {
//   return ["11111","222222","333333"];
// }

// main() {
//   print(printInfo());

// }

// int count(int n) {
//   var sum = 0;
//   for (var i=0;i < n;i++) {
//     sum += i;
//   }
//   return sum;
// }

// main() {
//   print(count(10));
// }

// int count(int n) {
//   var sum = 0;
//   for (var i=0;i < n;i++) {
//     sum += i;
//   }
//   return sum;
// }

// main() {
//   print(count(10));

// }

// String printUserInfo(String name, int age)  {
//   return "你的名字是:${name}你的打年龄是:${age}";
// }


// main() {
//   print(printUserInfo("周华建",44));
// }

String printUserInfo(String name,[int age]) {
  if(age!=null) {
    return "你的姓名是:${name},你的年龄是:${age}";
  }
  return "你的姓名是:${name},年龄:保密";
}

main() {
  print(printUserInfo("周大大"));
}