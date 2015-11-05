//You should implement your assign3 here.
PImage bg1;
PImage bg2;
PImage enemy;
PImage fighter;
PImage hp;
PImage treasure;
int x=0;
int b=0;
int t=0;
int x1=floor(random(200));
int xx1=floor(random(600));
int yy1=floor(random(300));
int y =0;
int GAME;
int i ;
int j;
int k;
int l;
int m;
final int flat=0;
final int slant=1;
final int dimand=2;
void setup () {
  size(640,480) ; 
  bg1=loadImage("img/bg1.png"); 
  bg2=loadImage("img/bg2.png");
  enemy= loadImage("img/enemy.png");
 hp=loadImage("img/hp.png");
 fighter= loadImage("img/fighter.png");
 treasure=loadImage("img/treasure.png");
}


void draw() {   
  background(0);
  image(bg1,b,0);
  image(bg2,t-640,0);
  
     b=b+5;
     t=t+5;
   if(b>=640){
     b=-640;}
     if(t>=1280){
       t=0;}
  image(enemy,x,y);
  image(enemy,x+i,y+j);
  image(enemy,x+k,y+2*j);
  image(enemy,x+l,y+3*j);
  image(enemy,x+m,y+4*j);
     
     
   switch(GAME){
    case flat:
   i=55;
   k=110;
   l=165;
   m=220;
   j=0;
   
   x=x+5;
   
  
  if(x==700){
    
     GAME=slant;
      y = floor(random(0,180));
      x=-300;
  }
  
  break;
 case slant:
 
 i=55;
   k=110;
   l=165;
   m=220;
 j=55;
 
   x=x+5;
  
  
   if(x==700){
     GAME=dimand;
     y = floor(random(0,180));
     x=-280;
     
  }
  break;
  case dimand:
  i=55;
   k=110;
   l=55;
   m=0;
 j=55;
  image(enemy,x-i,y+j);
  image(enemy,x-k,y+2*j);
  image(enemy,x-l,y+3*j);
  
   x=x+5;
  
  
   if(x==700){
     GAME=flat;
     y = floor(random(0,180));
     x=-300;
  }
  break;
   }
  
  
  
 
   fill(247,7,7);
  rect(10,10,x1,10);
 
  image(fighter,450,300);
  
  image(hp,1,1);
  
  
  image(treasure,xx1,yy1);
  
 
  
}
