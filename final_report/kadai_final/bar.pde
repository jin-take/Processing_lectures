// 2 bars move
void drawBar(){
  fill(0);
  rect(barX_left, barY_left, barWidth, barHeight);
  rect(barX_right, barY_right, barWidth, barHeight);
}

void moveBar_left(){
  if (D){
    barX_left=barX_left+barVX;
  }else if (A){
    barX_left=barX_left-barVX;
  }
  
  if(barX_left < 0) barX_left = 0;
  if(barX_left + barWidth > width / 2) barX_left = width / 2 - barWidth;
}


void moveBar_right(){
  if (L){
    barX_right=barX_right+barVX;
  } else if (J){
    barX_right=barX_right-barVX;
  }
  
  if(barX_right < width/2) barX_right = width/2;
  if(barX_right + barWidth > width) barX_right = width - barWidth; 
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
