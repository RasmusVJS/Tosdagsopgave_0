int circleSize;
int numberOfCircles;
int red;
int green;
int blue;
int counter = 0;
int rowCounter = 0;

void setup(){
   size(400,400);
   red = 255;
   green = 255;
   blue = 255;
   numberOfCircles = 30;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
  
}
void draw(){
  int x;
  int y;
  x = circleSize*counter;
  y = circleSize*rowCounter;

  red = counter == 0 ? int(random(0,255)) : red;
  green = counter == 0 ? int(random(0,255)) : green;
  blue = counter == 0 ? int(random(0,255)) : blue;

  fill(red,green,blue);
   
  ellipse(x,y,circleSize,circleSize);
  
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
}
