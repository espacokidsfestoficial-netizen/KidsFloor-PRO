
/*
========================================

KidsFloor PRO
Versão 0.1 Alpha

Engine Principal

Espaço Kids Fest

========================================
*/

SceneManager sceneManager;

void settings() {

  size(1280,720,P2D);

  smooth(8);

}

PImage imgForest;
PImage imgStump;
PImage imgMole;

void setup() {

  frameRate(60);

  surface.setTitle("KidsFloor PRO");

  surface.setResizable(true);

  sceneManager = new SceneManager();

imgForest = loadImage("forest.png");
imgStump  = loadImage("stump.png");
imgMole   = loadImage("mole.png");
}

void draw() {

  sceneManager.update();

  sceneManager.render();

}
