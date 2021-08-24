//import processing.serial.*;
//import cc.arduino.*;
//Arduino arduino;

public void setup(){
  size(750, 750);
  //arduino = new Arduino(this, Arduino.list()[0], 57600);
  
}

public void draw(){
  //int y = arduino.analogRead(5);
  Cat cat = new Cat(400, 200);
  cat.drawCat();
  //cat.x = y;
  //System.out.println(y);
}

class Cat{
  int x;
  int y;
  
  int head_x;
  int head_y;
  int head_size;
  
  
  
  
  public Cat(int a, int b){
    x = a;
    y = b;
    head_x = x-100;
    head_y = y+100;
    head_size = 100;
  }
  
  public void drawCat(){
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
    line(head_x+whisker_offset, head_y-whisker_height, head_x+cos(angle1)*whisker_length, head_y-sin(angle1)*whisker_length);
    line(head_x+whisker_offset, head_y, head_x+whisker_length, head_y);
    line(head_x+whisker_offset, head_y+whisker_height, head_x+cos(angle1)*whisker_length, head_y+sin(angle1)*whisker_length);
    
    line(head_x-whisker_offset, head_y-whisker_height, head_x-cos(angle1)*whisker_length, head_y-sin(angle1)*whisker_length);
    line(head_x-whisker_offset, head_y, head_x-whisker_length, head_y);
    line(head_x-whisker_offset, head_y+whisker_height, head_x-cos(angle1)*whisker_length, head_y+sin(angle1)*whisker_length);
  }
    
}
