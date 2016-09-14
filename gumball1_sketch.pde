GumballMachine gumballMachine = new GumballMachine(5);
  
  MachineButton insertQuarterButton  = new QuarterButton(100,350,130,50,gumballMachine);
  MachineButton turnCrankButton  = new TurnCrankButton(500,350,180,50,gumballMachine);
  
void setup() 
{
  size(800, 800) ;
  background(255) ;
  smooth() ;
  strokeWeight(3);
  strokeCap(ROUND);
  
  // load font
  PFont font;
  font = loadFont("BookAntiqua-48.vlw");
  textFont(font, 32);

  // Only draw once
  //noLoop();
}

void draw() {
  fill(0);  
  text("The Gumball Machine", 250, 60);
  PImage image = loadImage("gumball.jpg");
  image(image, (width-image.width)/2, (height-image.height)/2);  
  
  //runTest() ;
  runUI();
}

void runUI(){
  insertQuarterButton.draw();
  turnCrankButton.draw();
}


public void runTest() {
  GumballMachine gumballMachine = new GumballMachine(5);
  System.out.println(gumballMachine);
  gumballMachine.insertQuarter();
  /*
  gumballMachine.turnCrank();
  System.out.println(gumballMachine);
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  gumballMachine.insertQuarter();
  gumballMachine.turnCrank();
  System.out.println(gumballMachine);*/
}