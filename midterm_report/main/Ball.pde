/*******************************
 Ball
 *******************************/

float ballX=200.0f;
float ballY=300.0f;
float ballVX=5.0f;
float ballVY=5.0f;
float ballRadius=7.5f;

int missCounter=0;

void moveBall(){
  ballX=ballX+ballVX;
  ballY=ballY+ballVY;
  if(ballX>width||ballX<0){
    ballVX=-ballVX;
  }
  if(ballY<0){
    ballVY=-ballVY;
  }


  if(ballY>height){
    missCounter++;
    println("Miss!!");

    ballX=100;  
    ballY=300;

    if(missCounter>= 5){
      println("Game Over!!");
      missCounter=0;
    }
  }
}

void drawBall(){
  ellipse(ballX, ballY, ballRadius*2, ballRadius*2);
}
