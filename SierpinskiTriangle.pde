int len = 999; 

void setup() {
  size(1000, 1000);
  background(25, 50, 75);
  //noStroke(); /*casues squares to mesh*/
  fill(89,46,82); 
  sierpinskiCarpet((width - len)/2, (height - len)/2, len);
}

void draw() {
  
  noLoop();
}

void sierpinskiCarpet(int x, int y, int size) {
  if (size < 3) {
    rect(x, y, size, size);
    return;
  }

  int newSize = size / 3;

  
  rect(x + newSize, y + newSize, newSize, newSize);

  
  for (int dx = 0; dx < 3; dx++) {
    for (int dy = 0; dy < 3; dy++) {
      if (dx == 1 && dy == 1) continue; // Skip center
      sierpinskiCarpet(x + dx * newSize, y + dy * newSize, newSize);
    }
  }
}
