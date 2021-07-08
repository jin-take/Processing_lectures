/*******************************
 Block
 *******************************/
final int MAX_BLOCKS_right=90;

float[] blockX_right=new float[MAX_BLOCKS_right];
float[] blockY_right=new float[MAX_BLOCKS_right];
float[] blockWidth_right=new float[MAX_BLOCKS_right];
float[] blockHeight_right=new float[MAX_BLOCKS_right];
boolean[] blockHitFlag_right=new boolean[MAX_BLOCKS_right];


final int BLOCK_ROWS_right=6;
final int BLOCK_GAP_right=2; 


void drawBlocks_right(){
  for(int j=0; j<MAX_BLOCKS_right; j++){
    if(blockHitFlag_right[j]==false){
      rect(blockX_right[j]+515, blockY_right[j], blockWidth_right[j], blockHeight_right[j]);
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
