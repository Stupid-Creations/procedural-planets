void setup(){
  size(400,400);
}

void draw(){
    translate(mouseX,mouseY);

  drawCircle(10,20,20);
}

void drawCircle(int r, int xs, int ys) {
  int steps = 360;
  float angleStep = TWO_PI / steps; // Angle between each point in radians

  for (int i = 0; i < steps; i+= 10) {
    float x = round((r * cos(i * angleStep)+xs)*10) ;// Calculate the x position
    float y = round((r * sin(i * angleStep)+ys)*10); // Calculate the y position
    pixel a = new pixel(int(x), int(y),20); // Draw the point at the calculated position
    a.render();
  }
}
class pixel{
  int x;
  int y;
  int size;
  color colour;
  pixel(int xv, int yv, int s){
    x = xv;
    y = yv;
    size = s;
  }
  void setcolour(color c){
    colour = c;
  }
  void render(){
    fill(colour);
    square(x,y,size);
  }
}

ArrayList<pixel> circles(int x, int y, int radius){
  ArrayList<pixel> circle = new ArrayList<pixel>();
  int xs = 0;
  int ys = radius;
  int d = 3-2*radius;

  return circle;
}

void draw_circle(int r,int xs, int ys){
  int x = 0+xs;
  int y = r+ys;
  int d = 3-2*r;
  while (x <= y){
    plot_points(x,y);
    if (d < 0){
      d += 4*x+6;
    }else{
      d+= 4*(x-y)+10;
      y-=1;
    }
    x++;
  }
}
void plot_points(int x ,int y){
  float[][] points = {{x,y},{-x,y},{-x,-y},{x,-y},{y,x},{-y,x},{-y,-x},{y,-x}};
  for(int i = 0; i < points.length; i++){
    println(points[i][0],points[i][1]);
    point(points[i][0],points[i][1]);
  }
}
