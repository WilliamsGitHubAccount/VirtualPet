//import processing.serial.*;
//import cc.arduino.*;
//Arduino arduino;

public void setup(){
  size(750, 750);

  //arduino = new Arduino(this, Arduino.list()[1], 57600);
  Cat cat = new Cat(400, 200);
  cat.drawCat();
  
}

public void draw(){

  
  


}

class Cat{
  int x;
  int y;
  
  int head_x;
  int head_y;
  int body_x;
  int body_y;
  int head_size;
  int body_size;
  
  
  
  
  public Cat(int a, int b){
    x = a;
    y = b;

    head_size = 200;
    body_size = 100;
    
    head_x = x-head_size;
    head_y = y+head_size;
    body_x = x-body_size;
    body_y = y+body_size;
  }
  
  public void drawCat(){
    drawBody();
    drawLegs();
    drawHead();
    drawWhiskers();
  }
  
  void drawHead(){
    noStroke();
    ellipse(head_x, head_y, head_size, head_size);
  }
  
  void drawWhiskers(){
    
    float whisker_length = head_size*0.8;
    int whisker_height = 10;
    
    //how far the whiskers are from the center of the head
    int whisker_offset = 20;
    
    float angle1 = (float)Math.PI/8;
    
    stroke(1);
    strokeWeight(10);
    line(head_x+whisker_offset, head_y-whisker_height, head_x+cos(angle1)*whisker_length, head_y-sin(angle1)*whisker_length);
    line(head_x+whisker_offset, head_y, head_x+whisker_length, head_y);
    line(head_x+whisker_offset, head_y+whisker_height, head_x+cos(angle1)*whisker_length, head_y+sin(angle1)*whisker_length);
    
    line(head_x-whisker_offset, head_y-whisker_height, head_x-cos(angle1)*whisker_length, head_y-sin(angle1)*whisker_length);
    line(head_x-whisker_offset, head_y, head_x-whisker_length, head_y);
    line(head_x-whisker_offset, head_y+whisker_height, head_x-cos(angle1)*whisker_length, head_y+sin(angle1)*whisker_length);
  }
    
  void drawBody(){
    noStroke();
    rect(body_x-body_size, body_y+0.5*body_size, body_x+body_size, body_y);
  }
  void drawLegs(){
  
  }

}
