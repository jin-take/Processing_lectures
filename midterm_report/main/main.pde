/***************************************************
takehiro iino
2110008
 ***************************************************/
int time1 = 2500;
int time2 = 5000;
int time3 = 7500;
int time4 = 10000;
int time5 = 12500;
int time6 = 15000;
int time7 = 17500;

void setup(){
  size(1000, 700);
  noStroke();
  arrangeBlocks_left();
  arrangeBlocks_right();
  color(124);
}

void draw(){
  background(255);
  fill(0, 0, 0);
  int time = millis();
  
  if (time>time1){
    rect(495, 50, 10, 100);
    rect(495, 200, 10, 100);
    rect(495, 450, 10, 100);
      // center line (above)
    if(ballX>495 && ballX<505){
      if(ballY>50 && ballY<150){
        ballVX=-ballVX;
      }
    }
    // center line (middle)
    if(ballX>495 && ballX<505){
      if(ballY>200 && ballY<300){
        ballVX=-ballVX;
      }
    }
    // center line (bottom)
    if(ballX>495 && ballX<505){
      if(ballY>450 && ballY<550){
        ballVX=-ballVX;
      }
    }
  }
  
  if (time>time2){
    rect(495, 10, 10, 100);
    rect(495, 250, 10, 100);
    rect(495, 500, 10, 100);
    
    if(ballX>495 && ballX<505){
      if(ballY>10 && ballY<110){
        ballVX=-ballVX;
      }
    }
    // center line (middle)
    if(ballX>495 && ballX<505){
      if(ballY>250 && ballY<350){
        ballVX=-ballVX;
      }
    }
    // center line (bottom)
    if(ballX>495 && ballX<505){
      if(ballY>500 && ballY<600){
        ballVX=-ballVX;
      }
    }
  }
  if (time>time3) {
    rect(495, 300, 10, 100);
    rect(495, 500, 10, 50);
    rect(495, 700, 10, 100);
    
    if(ballX>495 && ballX<505){
      if(ballY>300 && ballY<400){
        ballVX=-ballVX;
      }
    }
    // center line (middle)
    if(ballX>495 && ballX<505){
      if(ballY>500 && ballY<550){
        ballVX=-ballVX;
      }
    }
    // center line (bottom)
    if(ballX>495 && ballX<505){
      if(ballY>700 && ballY<800){
        ballVX=-ballVX;
      }
    }
  }
  if (time>time4) {
    rect(495, 100, 10, 100);
    rect(495, 250, 10, 70);
    rect(495, 450, 10, 140);
    
    if(ballX>495 && ballX<505){
      if(ballY>100 && ballY<200){
        ballVX=-ballVX;
      }
    }
    // center line (middle)
    if(ballX>495 && ballX<505){
      if(ballY>250 && ballY<320){
        ballVX=-ballVX;
      }
    }
    // center line (bottom)
    if(ballX>495 && ballX<505){
      if(ballY>450 && ballY<590){
        ballVX=-ballVX;
      }
    }
  }
  
  if (time>time5){
    rect(495, 50, 10, 100);
    rect(495, 200, 10, 100);
    rect(495, 450, 10, 100);
      // center line (above)
    if(ballX>495 && ballX<505){
      if(ballY>50 && ballY<150){
        ballVX=-ballVX;
      }
    }
    // center line (middle)
    if(ballX>495 && ballX<505){
      if(ballY>200 && ballY<300){
        ballVX=-ballVX;
      }
    }
    // center line (bottom)
    if(ballX>495 && ballX<505){
      if(ballY>450 && ballY<550){
        ballVX=-ballVX;
      }
    }
  }
  
  if (time>time6){
    rect(495, 10, 10, 100);
    rect(495, 250, 10, 100);
    rect(495, 500, 10, 100);
    
    if(ballX>495 && ballX<505){
      if(ballY>10 && ballY<110){
        ballVX=-ballVX;
      }
    }
    // center line (middle)
    if(ballX>495 && ballX<505){
      if(ballY>250 && ballY<350){
        ballVX=-ballVX;
      }
    }
    // center line (bottom)
    if(ballX>495 && ballX<505){
      if(ballY>500 && ballY<600){
        ballVX=-ballVX;
      }
    }
  }
  if (time>time7) {
    rect(495, 300, 10, 100);
    rect(495, 500, 10, 50);
    rect(495, 700, 10, 100);
    
    if(ballX>495 && ballX<505){
      if(ballY>300 && ballY<400){
        ballVX=-ballVX;
      }
    }
    // center line (middle)
    if(ballX>495 && ballX<505){
      if(ballY>500 && ballY<550){
        ballVX=-ballVX;
      }
    }
    // center line (bottom)
    if(ballX>495 && ballX<505){
      if(ballY>700 && ballY<800){
        ballVX=-ballVX;
      }
    }
  }
  

  // bar
  if(ballX>barX_left && ballX<barX_left+barWidth){
    if(ballY>barY_left && ballY<barY_left+barHeight){
      ballVY=-ballVY;
    }
  }
  
  if(ballX>barX_right && ballX<barX_right+barWidth){
    if(ballY>barY_right && ballY<barY_right+barHeight){
      ballVY=-ballVY;
    }
  }
  
  

  for(int i=0; i<MAX_BLOCKS_left; i++){
    if(blockHitFlag_left[i]==false){
      if(ballX>blockX_left[i] && ballX<blockX_left[i]+blockWidth_left[i]){
        if(ballY>blockY_left[i] && ballY<blockY_left[i]+blockHeight_left[i]){
          ballVY=-ballVY;     
          blockHitFlag_left[i]=true;
        }
      }
    }
  }
    
  for(int j=0; j<MAX_BLOCKS_right; j++){
    if(blockHitFlag_right[j]==false){
      if(ballX>blockX_right[j]+515 && ballX<blockX_right[j]+blockWidth_right[j]+515){
        if(ballY>blockY_right[j] && ballY<blockY_right[j]+blockHeight_right[j]){
          ballVY=-ballVY;     
          blockHitFlag_right[j]=true;
        }
      }
    }
  }

  moveBall();
  drawBall();
  

  moveBar_left();
  moveBar_right();
  drawBar();

  drawBlocks_left();
  drawBlocks_right();

}
