float barX_left=200.0f, barX_right=600.0f;
float barY_left=600.0f, barY_right=600.0f;
float barVX=5.0f;
float barWidth=100.0f;
float barHeight=10.0f;
boolean A, D, J, L;

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


void drawBar(){
  rect(barX_left, barY_left, barWidth, barHeight);
  rect(barX_right, barY_right, barWidth, barHeight);
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
