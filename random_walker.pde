int QUANTITY = 250;
Walker[] walkers = new Walker[QUANTITY]; //<>//

void setup() {
  size(600, 600);
  background(0);
  
  for (int i = 0; i < QUANTITY; i++) {
    walkers[i] = new Walker();
  }
}

void draw() {
  for (int j = 0; j < 10; j++) {
    for (int i = 0; i < QUANTITY; i++) {
      Walker w = walkers[i];
      
      w.move();
      if (w.isOffScreen()) w.reset();
      w.show();
    }
  }
}
