float obj_x, obj_y;
float dis_x, dis_y;
float delay=10.0;
float speed_x, speed_y; 


color c = color(255, 0, 0); 
color cc;


void setup() {
  // screen size
  size(500, 500);
  background(128);
  smooth();
  obj_x=mouseX;
  obj_y=mouseY;
}


void draw() {
  clear(false);
  
  obj_x += speed_x;
  obj_y += speed_y;
  if (obj_x>width|| obj_x<0){
    speed_x=-speed_x;
  }
  if (obj_y>height|| obj_y<0){
    speed_y=-speed_y;
  }

  fill(0);
  
  palette();
  
  ellipse(obj_x, obj_y, 20, 20);
}

// claer the point track
void clear(boolean clear){
  if (clear){
    fill(255, 10);
    rect(0, 0, width, height);
    fill(0);
  }else{
    background(255);
  }
}

// mouse control for the point
void mouseReleased(){
  speed_x=mouseX-pmouseX;
  speed_y=mouseY-pmouseY;
}
void mousePressed(){
  speed_x=0.0;
  speed_y=0.0;
  obj_x=mouseX;
  obj_y=mouseY;
}
void mouseDragged() {
  obj_x = mouseX;
  obj_y = mouseY;
}

// color setting
void palette() {
  // color palette(red)
  c = color(255, 0, 0); 
  fill(c, 128);
  noStroke();
  ellipse(250, 200, 200, 200);
  
  // color palette(green)
  c = color(0, 255, 0); 
  fill(c, 128); 
  noStroke();
  ellipse(200, 300, 200, 200);

  // color palette(blue)
  c = color(0, 0, 255);
  fill(c, 128);
  noStroke();
  ellipse(300, 300, 200, 200);
  
  // judge area and  change the point color
  // use 'dist()' function that can calculate the distance between the coordinates of two points.
  // dist(obj_x, obj_y, center_x, center_y)<(radius(circle)+radius(point))*3
  if (dist(obj_x, obj_y, 250, 200)<110|| dist(obj_x, obj_y, 200, 300)<110|| dist(obj_x, obj_y, 300, 300)<110){
    c = get((int)obj_x, (int)obj_y);
    // false
    if (c != color(255)) {
      cc = c;
    }
  }
  stroke(0);
  fill(cc, 255);
}
