

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;





int mode; //framework
final int intro = 4;
final int egame = 1;
final int pause = 2;
final int gameover = 3;
final int gmode = 6;
final int ngame = 7;
final int igame = 8;

// target
 int score = 0;
 int lives = 5;

int unicorn = 4; //unicorn
//target
float x, y; // target position

float vx, vy; // target velocity

//sound varibles
 Minim minim;
 AudioPlayer theme , Endgame , miss, coin, button, button2, gameplay;

//colour variables
color green = #4BFF05;
color blue = #059DFF;
color yellow = #F6FF0D;
color white = #F9FCF7;
color black = #080101;
color red = #FF190D;
color orange = #FF920D;


void setup() {
  
  size(800,800);
  mode = intro;
  textAlign ( CENTER, CENTER );
  
  //background stuff
  x = width/2;
  y = height/2;

 //minim
 minim = new Minim(this);
 theme = minim.loadFile("dance magic from scratch.mp3");
 button = minim.loadFile("button.mp3");
 button2 = minim.loadFile("button2.mp3");
 Endgame = minim.loadFile("wah.mp3");
 coin = minim.loadFile("coin.mp3");
 miss = minim.loadFile("Bruh.mp3");
 gameplay = minim.loadFile("Dubstep.mp3");
  
 
 
}

void draw () {
  
  if(mode == intro) {
    intro();
  } else if ( mode == gmode ){
    gmode();
  } else if ( mode == egame) { 
    egame(); 
  } else if (mode == ngame){
    ngame();
  } else if (mode == igame){
    igame();
  } else if ( mode == pause){
    pause();
  } else if ( mode == gameover){
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
  
  
}

void unicorn () {
fill(#0FA09E);
ellipse(400, 400, 5, 80);

fill(#000000);
ellipse(425,425, 5, 8);
ellipse(375,425, 5, 8);

fill(150, 0, 250);
noStroke();
ellipse(450, 475, 25, 25);
ellipse(450, 525, 25, 25);


ellipse(350, 475, 25, 25);
ellipse(350, 525, 25, 25);
stroke(0);
ellipse(400, 430, 50, 80);
ellipse(400, 500, 100, 95);
}

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


 
