import processing.sound.*;
SoundFile file;

int a = 0;
int started = 0;
int b = 0;
int win = 0;

int random = 1;

void setup() {
  PImage icon = loadImage("icon.png");
  surface.setIcon(icon);
  surface.setResizable(true);
  
  //frameRate(60);
  size(800,800);
  background(0);
  //surface.setTitle("Chase Game");
  
  file = new SoundFile(this, "startingVoice.wav");
  file.play();
  file.amp(1);
  
  file = new SoundFile(this, "bg.wav");
  file.play();
  file.loop();
  file.amp(0.1);
  
  fill(255,40);
  textSize(30);
  text("CHASE",10-50,30);
  text("CHASE",10,30);
  text("CHASE",10+(50*1),30);
  text("CHASE",10+(50*2),30);
  text("CHASE",10+(50*3),30);
  text("CHASE",10+(50*4),30);
  text("CHASE",10+(50*5),30);
  text("CHASE",10+(50*6),30);
  text("CHASE",10+(50*7),30);
  text("CHASE",10+(50*8),30);
  text("CHASE",10+(50*9),30);
  text("CHASE",10+(50*10),30);
  text("CHASE",10+(50*11),30);
  text("CHASE",10+(50*12),30);
  text("CHASE",10+(50*13),30);
  text("CHASE",10+(50*14),30);
  text("CHASE",10+(50*15),30);
  text("CHASE",10+(50*16),30);
  text("CHASE",10+(50*17),30);
  text("CHASE",10+(50*18),30);
  text("CHASE",10+(50*19),30);
  text("CHASE",10+(50*20),30);
  
  text("CHASE",10-50-10,(30*2));
  text("CHASE",10-10,(30*2));
  text("CHASE",10+(50*1)-10,(30*2));
  text("CHASE",10+(50*2)-10,(30*2));
  text("CHASE",10+(50*3)-10,(30*2));
  text("CHASE",10+(50*4)-10,(30*2));
  text("CHASE",10+(50*5)-10,(30*2));
  text("CHASE",10+(50*6)-10,(30*2));
  text("CHASE",10+(50*7)-10,(30*2));
  text("CHASE",10+(50*8)-10,(30*2));
  text("CHASE",10+(50*9)-10,(30*2));
  text("CHASE",10+(50*10)-10,(30*2));
  text("CHASE",10+(50*11)-10,(30*2));
  text("CHASE",10+(50*12)-10,(30*2));
  text("CHASE",10+(50*13)-10,(30*2));
  text("CHASE",10+(50*14)-10,(30*2));
  text("CHASE",10+(50*15)-10,(30*2));
  text("CHASE",10+(50*16)-10,(30*2));
  text("CHASE",10+(50*17)-10,(30*2));
  text("CHASE",10+(50*18)-10,(30*2));
  text("CHASE",10+(50*19)-10,(30*2));
  text("CHASE",10+(50*20)-10,(30*2));
  
    text("CHASE",10-50,(30*3));
  text("CHASE",10-10,(30*3));
  text("CHASE",10+(50*1),(30*3));
  text("CHASE",10+(50*2),(30*3));
  text("CHASE",10+(50*3),(30*3));
  text("CHASE",10+(50*4),(30*3));
  text("CHASE",10+(50*5),(30*3));
  text("CHASE",10+(50*6),(30*3));
  text("CHASE",10+(50*7),(30*3));
  text("CHASE",10+(50*8),(30*3));
  text("CHASE",10+(50*9),(30*3));
  text("CHASE",10+(50*10),(30*3));
  text("CHASE",10+(50*11),(30*3));
  text("CHASE",10+(50*12),(30*3));
  text("CHASE",10+(50*13),(30*3));
  text("CHASE",10+(50*14),(30*3));
  text("CHASE",10+(50*15),(30*3));
  text("CHASE",10+(50*16),(30*3));
  text("CHASE",10+(50*17),(30*3));
  text("CHASE",10+(50*18),(30*3));
  text("CHASE",10+(50*19),(30*3));
  text("CHASE",10+(50*20),(30*3));
  
  textSize(25);
  fill(random(0,255),random(0,255),random(0,255));
  text("chase game - made by gavin",80,140);
  
  textSize(70);
  fill(random(0,255),random(0,255),random(0,255));
  text("welcome.",80,200);
  fill(random(0,255),random(0,255),random(0,255));
  textSize(50);
  text("click anywhere to get started.",80,250);
  
  fill(random(0,255),random(0,255),random(0,255));
  text("controls:",80,400);
  textSize(30);
  text("r - toggle random colors (default: on)",80,440);
  text("enter - reset game",80,480);
  text("click to play",80,520);
}

void draw() {
  if (random == 1) {
    fill(random(0,255),random(0,255),random(0,255),3);
  } else {
    fill(255,255,255,3);
  }
  stroke(0,0,0,20);
  rectMode(CENTER);
  if (started == 1) {
  square(mouseX,mouseY,125); }
  if (started == 0) {
    //cursor(CROSS);
    String title = str(round(random(00000,99999)));
    surface.setTitle("<<  " + title + "    CHASE    " + title + "    GAME    " + title + "  >>");

    //fill(random(0,255),random(0,255),random(0,255));
    textSize(100);
    text("CHASE",100,700);
    
    textSize(40);
    text("v1",388,700);
    
    textSize(30);
    text("click enter if nothing is shown",105,730);
    //delay(100);
  } else {
    if (b == 1) {
      b = 0;
      noCursor();
      textSize(60);
      if (random == 1) {
      fill(random(0,255),random(0,255),random(0,255));
      text("level " + a,random(200,600),random(200,600));
      } else {
      noCursor();
      fill(255,255,255);
      text("level " + a,77,77);
      }
    }
  }
}

void mousePressed() {
  b = 1;
  if (started == 0) {
    started = 1;
    noCursor();
  }
  if (random == 1) {
  background(random(0,255),random(0,255),random(0,255));
  fill(random(0,255),random(0,255),random(0,255));
  rectMode(CENTER);
  square(mouseX,mouseY,random(10,150));
  } else {
  background(0,0,0);
  fill(250,0,0);
  rectMode(CENTER);
  square(mouseX,mouseY,70);
  }
  a = a + 1;
  surface.setTitle("CHASE || Placed at " + mouseX + ", " + mouseY + " || LEVEL " + a);
  file = new SoundFile(this, "select.mp3");
  file.play();
  file.amp(0.3);
  if (a >= 69) {
    if (win == 0) {
    file = new SoundFile(this, "glitch.wav");
    win = 1; }
    file.play();
    file.amp(0.4);
    cursor(CROSS);
    background(1);
    stroke(random(0,255),random(0,255),random(0,255));
    textSize(70);
    fill(random(0,255),random(0,255),random(0,255));
    text("you won!",80,200);
  }
}

void keyPressed() {
  if (key == 'r') {
    file = new SoundFile(this, "static.wav");
    file.play();
    file.amp(0.4);
   textSize(25);
   if (random == 1) {
    random = 0;
    fill(random(0,255),random(0,255),random(0,255));
    text("disabled random mode",random(200,600),random(200,600));
    } else {
    random = 1;
    fill(random(0,255),random(0,255),random(0,255));
    text("enabled random mode",random(200,600),random(200,600));
    }
  }
  if (key == ENTER) {
    a = 0;
    file = new SoundFile(this, "static.wav");
    file.play();
    file.amp(0.4);
    started = 0;
    win = 0;
    background(0);
    surface.setTitle("Chase Game");
    fill(255,40);
  textSize(30);
  text("CHASE",10-50,30);
  text("CHASE",10,30);
  text("CHASE",10+(50*1),30);
  text("CHASE",10+(50*2),30);
  text("CHASE",10+(50*3),30);
  text("CHASE",10+(50*4),30);
  text("CHASE",10+(50*5),30);
  text("CHASE",10+(50*6),30);
  text("CHASE",10+(50*7),30);
  text("CHASE",10+(50*8),30);
  text("CHASE",10+(50*9),30);
  text("CHASE",10+(50*10),30);
  text("CHASE",10+(50*11),30);
  text("CHASE",10+(50*12),30);
  text("CHASE",10+(50*13),30);
  text("CHASE",10+(50*14),30);
  text("CHASE",10+(50*15),30);
  text("CHASE",10+(50*16),30);
  text("CHASE",10+(50*17),30);
  text("CHASE",10+(50*18),30);
  text("CHASE",10+(50*19),30);
  text("CHASE",10+(50*20),30);
  
  text("CHASE",10-50-10,(30*2));
  text("CHASE",10-10,(30*2));
  text("CHASE",10+(50*1)-10,(30*2));
  text("CHASE",10+(50*2)-10,(30*2));
  text("CHASE",10+(50*3)-10,(30*2));
  text("CHASE",10+(50*4)-10,(30*2));
  text("CHASE",10+(50*5)-10,(30*2));
  text("CHASE",10+(50*6)-10,(30*2));
  text("CHASE",10+(50*7)-10,(30*2));
  text("CHASE",10+(50*8)-10,(30*2));
  text("CHASE",10+(50*9)-10,(30*2));
  text("CHASE",10+(50*10)-10,(30*2));
  text("CHASE",10+(50*11)-10,(30*2));
  text("CHASE",10+(50*12)-10,(30*2));
  text("CHASE",10+(50*13)-10,(30*2));
  text("CHASE",10+(50*14)-10,(30*2));
  text("CHASE",10+(50*15)-10,(30*2));
  text("CHASE",10+(50*16)-10,(30*2));
  text("CHASE",10+(50*17)-10,(30*2));
  text("CHASE",10+(50*18)-10,(30*2));
  text("CHASE",10+(50*19)-10,(30*2));
  text("CHASE",10+(50*20)-10,(30*2));
  
    text("CHASE",10-50,(30*3));
  text("CHASE",10-10,(30*3));
  text("CHASE",10+(50*1),(30*3));
  text("CHASE",10+(50*2),(30*3));
  text("CHASE",10+(50*3),(30*3));
  text("CHASE",10+(50*4),(30*3));
  text("CHASE",10+(50*5),(30*3));
  text("CHASE",10+(50*6),(30*3));
  text("CHASE",10+(50*7),(30*3));
  text("CHASE",10+(50*8),(30*3));
  text("CHASE",10+(50*9),(30*3));
  text("CHASE",10+(50*10),(30*3));
  text("CHASE",10+(50*11),(30*3));
  text("CHASE",10+(50*12),(30*3));
  text("CHASE",10+(50*13),(30*3));
  text("CHASE",10+(50*14),(30*3));
  text("CHASE",10+(50*15),(30*3));
  text("CHASE",10+(50*16),(30*3));
  text("CHASE",10+(50*17),(30*3));
  text("CHASE",10+(50*18),(30*3));
  text("CHASE",10+(50*19),(30*3));
  text("CHASE",10+(50*20),(30*3));
  
    textSize(25);
    fill(random(0,255),random(0,255),random(0,255));
    text("chase game - made by gavin",80,140);
  
    textSize(70);
    fill(random(0,255),random(0,255),random(0,255));
    text("welcome.",80,200);
    fill(random(0,255),random(0,255),random(0,255));
    textSize(50);
    text("click anywhere to get started.",80,250);
    
    fill(random(0,255),random(0,255),random(0,255));
    text("controls:",80,400);
    textSize(30);
    text("r - toggle random colors (default: on)",80,440);
    text("enter - reset game",80,480);
    text("click to play",80,520);
  }
}

void mouseMoved() {
  textSize(50);
  text("CHASE",mouseX-70,mouseY+15);
}
