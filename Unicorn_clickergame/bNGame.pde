void ngame () {
  
  gameplay.play();
  
  
   background (white);
   text("Score:" + score, width/2, 50 );
   text("lives:" + lives ,width/2 , 100); 
  
  
  
  stroke(50);
  fill(150, 0, 250);
  ellipse(x , y, 100, 100);
  
  
  
   x = x + vx;
   y = y + vy;
   

   
   if (y < 50 || y > height - 50) vy = vy * -1;
   if (x < 50 || x > width - 50 ) vx = vx * -1;
  
  
}




void ngameClicks() {
 
 if ( dist(mouseX, mouseY,x ,y)<100){
   
  coin.rewind();
  coin.play();
   
 score = score + 1;
 
} else {
  
  miss.rewind();
  miss.play();
  
  lives = lives - 1;
  
  if(lives == 0) mode = gameover;
  
  } 
  
  
}
