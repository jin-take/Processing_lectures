float c1, c2, c3;
float l1, l2, l3;


void drawWall(){
  fill(255, 241, 0);
  
  if(frameCount % 60 == 0){
    c1=random(0,200);
    c2=random(200,450);
    c3=random(450,680);
    l1=random(0,150);
    l2=random(0,200);
    l3=random(0,200);
  }

      
  rect(495, c1, 10, l1);
  rect(495, c2, 10, l2);
  rect(495, c3, 10, l3);
  // center line (above)
  if(ball_x>495 && ball_x<505){
    if(ball_y>c1 && ball_y<c1+l1){
      spe_x=-spe_x;
    }
  }
  
  // center line (middle)
  if(ball_x>495 && ball_x<505){
    if(ball_y>c2 && ball_y<c2+l2){
      spe_x=-spe_x;
    }
  }
  
  // center line (bottom)
  if(ball_x>495 && ball_x<505){
    if(ball_y>c3 && ball_y<c3+l3){
      spe_x=-spe_x;
    }
  }
}
