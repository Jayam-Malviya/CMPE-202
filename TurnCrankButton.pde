 class TurnCrankButton extends MachineButton{
   TurnCrankButton(int x, int y, int width, int height, GumballMachine gm){
     super(x, y, width, height, gm);
   }   
 
  void draw(){
    stroke(255,128,0);
    update();
    if(overButton) {
      fill(150,0,0);
      //System.out.println("Over crank------");
    }
      // checking if mousepressed, changing color
     if(mousePressed && overButton) {
      fill(0);
      //System.out.println(" pressed Crank button  "+ gumballMachine.getState());
      gumballMachine.turnCrank();
      System.out.println("\nstate after crank  " + gumballMachine.getState());
      System.out.println("Gumballs Left "+gumballMachine.getCount());
     }
    else{
    fill(230,230,230);
    }
   
   rect(buttonX, buttonY, buttonWidth, buttonHeight);
   //filling text, so changing color.
   fill(0,100,100);   
   text("Turn Crank",buttonX+10,buttonY+35);
  }
 }