public abstract class MachineButton{
  protected int buttonX;
  protected int buttonY;
  protected int buttonWidth;
  protected int buttonHeight;
  protected GumballMachine gumballMachine;
  protected boolean overButton;
  MachineButton(int x, int y, int width, int height, GumballMachine gm){
    buttonX = x;
    buttonY = y;
    buttonWidth = width;
    buttonHeight = height;
    gumballMachine = gm;
  }
 void setup(){
   stroke(0);
   noFill();
 }
 
 abstract void draw();
 
 void update() {
    overButton =  overRect(buttonX, buttonY, buttonWidth, buttonHeight);
 }


 boolean overRect(int x, int y, int width, int height) {
   if (mouseX >= x && mouseX <= x+width && 
       mouseY >= y && mouseY <= y+height) {
     return true;
   } else {
     return false;
   }
 }
}