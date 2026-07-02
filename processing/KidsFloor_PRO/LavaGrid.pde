class LavaGrid {

  int cols = 8;
  int rows = 5;

  LavaTile[][] tiles;

  int nextChange;

  LavaGrid() {

    tiles = new LavaTile[cols][rows];

    float w = width / float(cols);
    float h = height / float(rows);

    for (int x = 0; x < cols; x++) {

      for (int y = 0; y < rows; y++) {

        tiles[x][y] = new LavaTile(
          x * w,
          y * h,
          w,
          h
        );

      }
boolean isSafe(float px, float py) {

  int col = int(px / (width / float(cols)));
  int row = int(py / (height / float(rows)));

  if (col < 0 || col >= cols) return false;
  if (row < 0 || row >= rows) return false;

  return tiles[col][row].safe;

}
    }

    randomize();

  }

  void randomize() {

    for (int x = 0; x < cols; x++) {

      for (int y = 0; y < rows; y++) {

        tiles[x][y].safe = false;

      }

    }

    // aproximadamente 35% ficam seguros
    int safeCount = int(cols * rows * 0.35);

    while (safeCount > 0) {

      int x = int(random(cols));
      int y = int(random(rows));

      if (!tiles[x][y].safe) {

        tiles[x][y].safe = true;
        safeCount--;

      }

    }

    nextChange = millis() + 2500;

  }

  void update() {

  for (int x = 0; x < cols; x++) {

    for (int y = 0; y < rows; y++) {

      tiles[x][y].update();

    }

  }

}
  void render() {

    for (int x = 0; x < cols; x++) {

      for (int y = 0; y < rows; y++) {

        tiles[x][y].render();

      }

    }

  }

}
boolean isSafe(float px, float py) {

  int col = int(px / (width / float(cols)));
  int row = int(py / (height / float(rows)));

  if (col < 0 || col >= cols) return false;
  if (row < 0 || row >= rows) return false;

  return tiles[col][row].safe;

}
