 class QuarterButton extends MachineButton{
   QuarterButton(int x, int y, int width, int height, GumballMachine gm){
     super(x, y, width, height, gm);
   }
   
 void draw(){
  stroke(255,128,0); //<>//
  
  update();
  
  if(overButton) {
    fill(150,0,0);
    //System.out.println("Over coin button");
  }
    // checking if mousepressed, changing color
   if(mousePressed && overButton) {
    fill(0);
    //System.out.println("\nYou pressed Quarter button " + gumballMachine.getState());
    gumballMachine.insertQuarter();
    System.out.println("state now " + gumballMachine.getState());
  }
  else{
  fill(230,230,230);
  }
   
   rect(buttonX, buttonY, buttonWidth, buttonHeight);
   //filling text, so changing color.
   fill(0,100,100);   
   text("Quarter",buttonX+10,buttonY+35);
  }
}