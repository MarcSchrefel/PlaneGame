  import java.awt.Rectangle;


float speed = 12;   
int start_jet_x = 100;    //Start Punkt Heli
int start_jet_y = 100;

int start_ufo_x;
int start_ufo_y;

boolean gameover = false;

Ground ground;
Jet jet;
Background background;
Ufo ufo;

void setup(){
  size(1000,640);
  frameRate(60);
  start_ufo_x = width;
  start_ufo_y = 100;
 
  ground = new Ground();
  jet = new Jet();
  background = new Background();
}
  
  void draw(){
    
 gameover = false;
 
   if(gameover){                        
   System.out.println("NOOOOOOOOOOB");
    return;
  }
 
 ground.drawing();
 ground.act();
 jet.drawing();
 jet.act();
 ufo.drawing();
 ufo.act();

 
 Rectangle ufo_rect = new Rectangle(ufo.ufo_x, ufo.ufo_y, ufo.image_width, ufo.image_height); //Die Hitbox vom Flugsaurier
 Rectangle jet_rect = new Rectangle(jet.jet_x, jet.jet_y, jet.image_width, jet.image_height); //Die Hitbox vom Heli
 if(ufo_rect.intersects(jet_rect)){  //Sobald Heli und Flugsaurier kollidiere, stoppt das Game
   gameover = true;
  }

 

 
 if(jet.jet_y > height){   //Sobald Heli und Flugsaurier out of Map, stoppt das Game
      gameover = true;
    }

  }

  void keyReleased(){  // Wenn man leertaste drückt kann sich der Heli bewegen
  if(key == 'w'){ 
    jet.jump();
  }
  if(key == 's'){
    jet.fall();
}
  if(key == ' '){
    jet.stop();
  }
   if(key == 'a'){
    jet.left();
  }
   if(key == 'd'){
    jet.right();
  }
  if(key == ' '){
    jet.stop();
  }
  
  
  }
