/*******************************
 Block
 *******************************/
final int MAX_BLOCKS_left=90;

float[] blockX_left=new float[MAX_BLOCKS_left];
float[] blockY_left=new float[MAX_BLOCKS_left];
float[] blockWidth_left=new float[MAX_BLOCKS_left];
float[] blockHeight_left=new float[MAX_BLOCKS_left];
boolean[] blockHitFlag_left=new boolean[MAX_BLOCKS_left];


final int BLOCK_ROWS_left=6;
final int BLOCK_GAP_left=2; 


void drawBlocks_left(){
  for(int i=0; i<MAX_BLOCKS_left; i++){
    if(blockHitFlag_left[i]==false){
      rect(blockX_left[i]+5, blockY_left[i], blockWidth_left[i], blockHeight_left[i]);
    }
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
