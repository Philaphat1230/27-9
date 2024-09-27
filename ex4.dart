abstract class Building{
  void drafBlueprint();
  void interior();
  void construct();
}
 class House implements Building{//ใช้เรียกพ่อได้มากว่า 1
  @override
  void construct() {
  print("House construct");
  }
 
  @override
  void drafBlueprint() {
    print("House drafBlueprint");
  }
 
  @override
  void interior() {
    print("House interior");
  }

  
}
void main(List<String> args) {
  var myHouse =House();
  myHouse.construct();
  myHouse.interior();
  myHouse.drafBlueprint();
}