OPC opc;
PImage dot;

void setup()
{
  size(640, 360);

  dot = loadImage("dot.png");

  // Connect to the local instance of fcserver. You can change this line to connect to another computer's fcserver
  opc = new OPC(this, "192.168.7.2", 7890);

  // Map an 8x8 grid of LEDs to the center of the window, scaled to take up most of the space
  float spacing = height / 20.0;
/*
opc.ledGrid8x8(0, width/2, height/2, spacing, 0);

  // Put two more 8x8 grids to the left and to the right of that one.
  opc.ledGrid8x8(64, width/2 - spacing * 8, height/2, spacing, 0);
  opc.ledGrid8x8(128, width/2 + spacing * 8, height/2, spacing, 0);
*/
opc.ledGrid(0, 32, 16, width/2, height/2, spacing, spacing, 0, false );


  // Make the LED grid visible on-screen. By default, the LED sampling locations
  // are hidden and don't affect Processing's output.
  opc.showLocations(true);
}

void draw()
{
  background(0);
  
  // Change the dot size as a function of time, to make it "throb"
  float dotSize = height * 0.6 * (1.0 + 0.2 * sin(millis() * 0.01));
  
  // Draw it centered at the mouse location
  image(dot, mouseX - dotSize/2, mouseY - dotSize/2, dotSize, dotSize);
}

