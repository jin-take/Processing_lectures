final int MAX_BLOCKS_right=60;
final int MAX_BLOCKS_left=60;

float[] blockX_right=new float[MAX_BLOCKS_right];
float[] blockX_left=new float[MAX_BLOCKS_left];
float[] blockY_right=new float[MAX_BLOCKS_right];
float[] blockY_left=new float[MAX_BLOCKS_left];
float[] blockWidth_right=new float[MAX_BLOCKS_right];
float[] blockWidth_left=new float[MAX_BLOCKS_left];
float[] blockHeight_right=new float[MAX_BLOCKS_right];
float[] blockHeight_left=new float[MAX_BLOCKS_left];


boolean[] blockHitFlag_right=new boolean[MAX_BLOCKS_right];
boolean[] blockHitFlag_left=new boolean[MAX_BLOCKS_left];

final int BLOCK_ROWS_right=6;
final int BLOCK_GAP_right=2; 
final int BLOCK_ROWS_left=6;
final int BLOCK_GAP_left=2; 

void drawBlocks_right(){
  for(int j=0; j<MAX_BLOCKS_right; j++){
    fill(255, 0, 0);
    if(blockHitFlag_right[j]==false){
      rect(blockX_right[j]+515, blockY_right[j], blockWidth_right[j], blockHeight_right[j]);
    }
  }
}

void drawBlocks_left(){
  for(int i=0; i<MAX_BLOCKS_left; i++){
    fill(0, 0, 255);
    if(blockHitFlag_left[i]==false){
      rect(blockX_left[i]+5, blockY_left[i], blockWidth_left[i], blockHeight_left[i]);
    }
  }
}


void arrangeBlocks_right(){
  int j=0;
  while(j<MAX_BLOCKS_right){
    blockWidth_right[j]=78.0f;
    blockHeight_right[j]=15.0f;
    blockHitFlag_right[j]=false;
    blockX_right[j]=BLOCK_GAP_right+j%BLOCK_ROWS_right*(blockWidth_right[j]+BLOCK_GAP_right);
    blockY_right[j]=BLOCK_GAP_right+j/BLOCK_ROWS_right*(blockHeight_right[j]+BLOCK_GAP_right);
    j++;
  }
}

void arrangeBlocks_left(){
  int i=0;
  while(i<MAX_BLOCKS_left){
    blockWidth_left[i]=78.0f;
    blockHeight_left[i]=15.0f;
    blockHitFlag_left[i]=false;
    blockX_left[i]=BLOCK_GAP_left+i%BLOCK_ROWS_left*(blockWidth_left[i]+BLOCK_GAP_left);
    blockY_left[i]=BLOCK_GAP_left+i/BLOCK_ROWS_left*(blockHeight_left[i]+BLOCK_GAP_left);
    i++;
  }
}
