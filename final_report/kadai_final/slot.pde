int[] box = {0, 0, 0};

void drawSlot(){
  fill(255);
  rect(345, 725, 100, 100);
  rect(445, 725, 100, 100);
  rect(545, 725, 100, 100);
  
  slot();
  message();
  reset();
}

void slot(){
  textAlign(CENTER);
  fill(0);
  textSize(30);
  int i;
  
  if (box[0] == 0){
    i = (int)random(7) + 1;
    text(i, 400, 690);
    if(keyPressed){
      if (keyCode == LEFT){
        box[0] = i;
      }
    }
  }else if(box[0] != 0){
    text(box[0], 400, 690);
  }
  
  if(box[1] == 0){
    i = (int)random(7) + 1;
    text(i, 500, 690);
    if(keyPressed){
      if (keyCode == DOWN){
        box[1] = i;
      }
    }
  }else if(box[1] != 0){
    text(box[1], 500, 690);
  }
  
  if (box[2] == 0){
    i = (int)random(7) + 1;
    text(i, 600, 690);
    if(keyPressed){
      if (keyCode == RIGHT){
        box[2] = i;
      }
    }
  }else if(box[2] != 0){
    text(box[2], 600, 690);
  }
}

void message(){
  if ((box[0]>0) && (box[0]==box[1]) && (box[1]==box[2])){
    textSize(30);
    text("YOU WIN!", 500, 635);
    WIN = true;
    textSize(10);
    text("Click to restart", 500, 650);
  }else if((box[0]>0) && (box[1]>0) && (box[2]>0)){
    textSize(30);
    text("YOU LOSE!", 500, 635);
    textSize(10);
    text("Click to restart", 500, 650);
  }

  textSize(15);
  text("'←' to stop", 400, 715);
  text("'↓' to stop", 500, 715);
  text("'→' to stop", 600, 715);
}

void reset(){
  if(mousePressed){
    box[0] = 0;
    box[1] = 0;
    box[2] = 0;
  }
}
