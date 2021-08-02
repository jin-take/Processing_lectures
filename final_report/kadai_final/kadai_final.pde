/***************************************************
takehiro iino
2110008
****************************************************/

//game flow
int situation;

// variable 
float ball_x, ball_y, ball_r; // ball_r => radius
float spe_x, spe_y; // ball speed 
float lastx,lasty;// ball init 

float barX_left=200.0f, barX_right=600.0f;
float barY_left=600.0f, barY_right=600.0f;
float barVX=5.0f;
float barWidth=100.0f;
float barHeight=10.0f;
boolean A, D, J, L,WIN;

int lineX_start=0, lineX_end=1000;
int lineY=610;

int count=0;

// image
PImage img;


void setup(){
  size(1000, 750); // display size
  noStroke();  
  frameRate(60);
  gameInit();
}


void draw(){
  background(255);  // background color
  noStroke();
  if(situation==0){
    gameTitle();
  }else if(situation==1){
    gamePlay();
  }else if(situation==2){
    gameOver();
  }
}

void gameInit(){
  img = loadImage("gifimage.gif"); //image read
  situation=0; 
  // ball setting
  ball_x = 350;
  ball_y = 350; 
  ball_r = 20;
  // spped setting
  spe_x = 5;
  spe_y = -5;
  
  arrangeBlocks_left();
  arrangeBlocks_right(); 
}

void gameTitle(){
  fill(255, 0, 0);
  textSize(50);
  text("Click to start!", 500, 420);
}

void gamePlay(){
  image(img, 300, 180, 500, 500);  // image show
  
  lastx=ball_x;
  lasty=ball_y;
  
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
  
  // collision detection to under line
  // game over
  if(ball_y > lineY){
    gameOver();
    situation=2;
  }
  
  // collision detection to blocks
  for(int i=0; i<MAX_BLOCKS_left; i++){
    if(blockHitFlag_left[i]==false){
      if(ball_x>blockX_left[i] && ball_x<blockX_left[i]+blockWidth_left[i]){
        if(ball_y>blockY_left[i] && ball_y<blockY_left[i]+blockHeight_left[i]){
          spe_y=-spe_y;     
          blockHitFlag_left[i]=true;
        }
      }
    }
  }
    
  for(int j=0; j<MAX_BLOCKS_right; j++){
    if(blockHitFlag_right[j]==false){
      if(ball_x>blockX_right[j]+515 && ball_x<blockX_right[j]+blockWidth_right[j]+515){
        if(ball_y>blockY_right[j] && ball_y<blockY_right[j]+blockHeight_right[j]){
          spe_y=-spe_y;     
          blockHitFlag_right[j]=true;
        }
      }
    }
  }  
  
  // ball function call
  drawBall();
  // bar function call
  drawBar();
  moveBar_left();
  moveBar_right();
  
  drawBlocks_left();
  drawBlocks_right();
  
  drawWall();
  drawSlot();
  
  // under line
  stroke(20,220,20);
  strokeWeight(5);
  line(lineX_start, lineY, lineX_end, lineY);
  
  if(WIN){
   background(0);
   textSize(10);
   text("WIN",width/2,height/2);
  }
}


void gameOver(){
  fill(0,0,255);
  textSize(50);
  text("Game Over!", 500, 400);
  textSize(25);
  text("Click to retry!", 500, 420);
}


void mousePressed(){
  if(situation==0){
    situation=1;
  }
  if(situation==2){
    gameInit();
  }
}
