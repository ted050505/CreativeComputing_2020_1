class ball {
  float x = random(width);
  float y = random(height);

  float size = random(1, 5); 
  float light = 100;

  float speedx = random(-1, 1);
  float speedy = random(-1, 1);


  void update() {
    x = lerp(x, mouseX, 0.01);
    y = lerp(y, mouseY, 0.01);
    //println(x, y);
  }

  //void update2() {
  //  x = lerp(x, width, 0.01);
  //  y = lerp(y, height, 0.01);
  //}

  void display() { 
    noStroke();
    //fill(sin_light);
    fill(255, light);
    ellipse(x, y, size, size);
  }

  void drawing() {
    //translate(width/2, height/2);
    for (int i=0; i<50; i++) {
      x = lerp(x, width/2, 0.01 );
      y = lerp(y, height/2, 0.01);
      //light = lerp(0, 100, 0.01);
    }
  }

  void restart() {
    light = 100;
    x = random(width);
    y = random(height);
    size = random(1, 5);
  }
}
