color[] COLORS = {
  #fbf8cc,
  #fde4cf,
  #ffcfd2,
  #f1c0e8,
  #cfbaf0,
  #a3c4f3,
  #90dbf4,
  #8eecf5,
  #98f5e1,
  #b9fbc0
};

public class Walker {
  public PVector pos;
  public color col;
  public int weight = 5;

  public Walker() {
    this.pos = new PVector(random(0, width), random(0, height));
    this.col = COLORS[floor(random(0, COLORS.length))];
  }

  void move() {
    this.pos.add(PVector.random2D());
  }

  void show() {
    stroke(this.col);
    strokeWeight(this.weight);
    point(this.pos.x, this.pos.y);
  }

  void reset() {
    this.pos = new PVector(random(0, width), random(0, height));
  }

  boolean isOffScreen() {
    return this.pos.x < 0 || this.pos.x > width || this.pos.y < 0 || this.pos.y > height;
  }
}
