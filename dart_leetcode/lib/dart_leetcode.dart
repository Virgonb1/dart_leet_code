int countDigits(int num) {
  // tạo biến đếm count
  int count = 0;
  // chuyển int num sang String
  String n = num.toString();
  // tạo vòng for để tính
  for (int i = 0; i < n.length; i++) {
    // tạo biến temp để chuyển từng phần tử n thành int
    int temp = int.parse(n[i]);
    // nếu chia hết thì count++
    if (num % temp == 0) {
      count++;
    }
  }
  return count;
}

void main(List<String> args) {
  int num = 1246;
  print(countDigits(num));
}
