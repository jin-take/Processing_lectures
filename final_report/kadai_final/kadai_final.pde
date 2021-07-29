// variable 
float ball_x, ball_y, ball_r; // ball_r => radius
float spe_x, spe_y; // ball speed 

float barX_left=200.0f, barX_right=600.0f;
float barY_left=600.0f, barY_right=600.0f;
float barVX=5.0f;
float barWidth=100.0f;
float barHeight=10.0f;
boolean A, D, J, L;



void setup(){
  size(1000, 700); // display size
  noStroke();

  // ball setting
  ball_x = 250;
  ball_y = 250; 
  ball_r = 20;
  
  // spped setting
  spe_x = 5;
  spe_y = -5;
}


void draw(){
  background(0); // background color
  circle(ball_x, ball_y, ball_r); // ball set
  
  // Update coordinates
  ball_x += spe_x;
  ball_y += spe_y;
  
  // collision detection to wall
  if(ball_x + ball_r/2 > width) spe_x *= -1; 
  if(ball_x - ball_r/2 < 0) spe_x *= -1; 
  if(ball_y - ball_r/2 < 0) spe_y *= -1; 
  
  // collision detection to bar
  if((ball_x + ball_r/2 > barX_left && ball_x - ball_r/2 < barX_left+barWidth)  
    &&(barY_left < ball_y + ball_r/2 && ball_y + ball_r/2 < barY_left+barHeight)){ 
      spe_y *= -1;
  }
  if((ball_x + ball_r/2 > barX_right && ball_x - ball_r/2 < barX_right+barWidth)  
    &&(barY_right < ball_y + ball_r/2 && ball_y + ball_r/2 < barY_right+barHeight)){ 
      spe_y *= -1;
  }
  
  
  // bar function call
  drawBar();
  moveBar_left();
  moveBar_right();
  
  
}



// 2 bars move
void drawBar(){
  rect(barX_left, barY_left, barWidth, barHeight);
  rect(barX_right, barY_right, barWidth, barHeight);
}

void moveBar_left(){
  if (D){
    barX_left=barX_left+barVX;
  }else if (A){
    barX_left=barX_left-barVX;
  }
}


void moveBar_right(){
  if (L){
    barX_right=barX_right+barVX;
  } else if (J){
    barX_right=barX_right-barVX;
  }
}

void keyPressed(){
  if (key=='a'){
    A=true;
  }
    if (key=='d'){
    D=true;
  }
    if (key=='j'){
    J=true;
  }
    if (key=='l'){
    L=true;
  }
}

void keyReleased(){
  if(key=='a'){
    A=false;
  }
    if(key=='d'){
    D=false;
  }
    if(key=='j'){
    J=false;
  }
    if(key=='l'){
    L=false;
  }
}
