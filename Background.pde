  class Background{
  String image_path = "background/Space.png"; //Bild auswählen
  
  PImage background;  
  
  Background(){
    background = loadImage(image_path); // Background soll bild Background laden
  }
  
  void drawing(){ //neue Methode drawing
    image(background, 0, 0, width, height); //der Background soll höhe und tiefe 0 sein
  }
  
}
