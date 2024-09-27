abstract class plane{
  void fly();
  void moveforword (int meters); //แอบเต็กเมทธอด
  
  void takeoff(){
    print('plane: takeoff');
  }
  landing() =>print("plane landing()");

}
class Boeing extends plane{
  @override
  void fly() {
   print("boeing fly");
  }

  @override
  void moveforword(int meters) {
    print("boeing moveforword() $meters merers");
  }

}



void main(List<String> args) {
  //var key  = plane();
  var boeing = Boeing();
  boeing.takeoff();
  boeing.landing();
  boeing.moveforword(150);
}