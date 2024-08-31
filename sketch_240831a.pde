void setup(){
  size(400,400);
}

PVector center = new PVector(200,200);

float offsetx = 0;
float offsety = 0;

void draw(){
  noStroke();
  for(int i = 0; i < 40;i++){
    for(int j = 0; j < 40; j++){
      if(center.dist(new PVector(i*10,j*10))< 196){
      pixel a = new pixel(i*10,j*10,10);
      a.setcolour(getcolor(noise(i*0.06+offsetx,j*0.06+offsety)));
      a.render();
    }
    }
  }
}

float changer = 0.01;
void keyPressed(){
  if(key == 'd'){
    offsetx += changer;
  }
    if(key == 'a'){
    offsetx -= changer;
  }
    if(key == 's'){
    offsety += changer;
  }
    if(key == 'w'){
    offsety -= changer;
  }
  if(offsety >= 3.6){
    changer *= -1;
  }
   if(offsetx >= 3.6){
     changer *= -1;
   }
     if(offsety <= 0){
    changer *= -1;
  }
   if(offsetx <= 0){
     changer *= -1;
   }
}


color getcolor(float greyscale){
  if(greyscale > 0.57){
    return color(25,125,75);
  }else{ if(greyscale > 0.3){
    return color(25,25,200);
  }else
  return color(25,25,125);}
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
