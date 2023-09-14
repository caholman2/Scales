void setup() {
  size(500, 500);
  noLoop();
}
void draw() {
  for(int y = -50; y < 550; y += 50){
    for(int x = -50; x < 550; x += 25){
      
      int r = (int)(Math.random()*75 + 150);
      int g = (int)(Math.random()*75 + 50);
      int b = (int)(Math.random()*75);
      
      scale(x,y,r,g,b);
    }
  }
}


void scale(int x, int y, int r, int g, int b) {
  noStroke();
  fill(r,g,b);
  
  ellipse(x,y,50,50);
  triangle(x-22,y-12,x+22,y-12,x,y-50);
  
  fill(r+20,g+20,b+20);
  ellipse(x,y,35,35);
  triangle(x-15,y-9,x+15,y-9,x,y-35);
  
  fill(r+40,g+40,b+40);
  ellipse(x,y,25,25);
  triangle(x-11,y-6,x+11,y-6,x,y-25);
}
