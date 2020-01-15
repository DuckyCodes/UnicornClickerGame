void mouseReleased() {
   if(mode == intro) {
  
    introClicks();
   }else if ( mode == gmode){
     gmodeClicks();
  } else if ( mode == egame) { 
    egameClicks();  
  }else if( mode == ngame){
    ngameClicks();
  }else if (mode == igame){
    igameClicks();
  } else if ( mode == pause){
    pauseClicks();
  } else if ( mode == gameover){
    gameoverClicks();
  }
  
  
  
  
  
  
  
}
