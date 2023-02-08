import 'package:collection/collection.dart';
void main(){
 List<int> nums = [1,15,6,3];

}
int differenceOfSum(List<int> nums) {
  // tạo 1 biến đếm từng phần tử
  int digitsum = 0;
  // tạo 1 biến tổng của List nums
  int elementsum = 0;
  // tạo vòng for để tính tổng từng phần tử của List nums
  for(int i = 0 ; i < nums.length; i ++){
    // tính tổng nums
    elementsum += nums[i];
    // chuyển List<int> sang List<String>
   String str = nums[i].toString();
   // nếu có số độ dài lớn hơn 0 thì ...
   if(str.length > 0 ) {
     // tạo vòng for để tính trường hợp length > 0
     for( int j = 0;j < str.length; j++){
       // chuyển sang dạng int để cộng từng phần tử vào List nums
       digitsum += int.parse(str[j]);
     }
   }
  }
  return digitsum + elementsum;
}