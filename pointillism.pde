PImage img;
Pimage dupImg;
int smallPoint, largePoint, screenWidth, screenHeight, startTime, currentTime;
String[] images = new String[8];
String[] titles = new String[8];
int i, x, y;
int maxSize = 256;
float pointillize;
String artist = "";
boolean clicked = false;

images[0] = './data/starry_night_vg.jpg';
titles[0] = 'Vincent Van Gogh - Starry Night';
images[1] = './data/line_over_form.jpg';
titles[1] = 'Piet Mondrian - Line over Form';
images[2] = './data/great_wave.jpg';
titles[2] = 'Hokusai - Great Wave';
images[3] = './data/sunday_in_the_park.jpg';
titles[3] = 'Georges Seurat - A Sunday in the Park';
images[4] = './data/creation_of_adam.jpg';
titles[4] = 'Michelangelo - Creation of Adam';
images[5] = './data/profit_i.jpg';
titles[5] = 'Jean-Michael Basquiat - Profit I';
images[6] = './data/the_migration_series.jpg';
titles[6] = 'Jacob Lawrence - The Migration Series';

void setup() {
  size(window.innerWidth, window.innerHeight - 20);
  smallPoint = 4;
  largePoint = maxSize;
  imageMode(CORNERS);
  noStroke();
  background(0);
  fill(255, 255, 255, 128);
  text("pointillism - A visual project by Pardha Ponugoti", window.innerWidth*2/3, window.innerHeight*3/4);
  text("click to begin | click to change paintings", window.innerWidth*2/3, window.innerHeight*3/4 + 20);
}

void draw() {
  if (mousePressed) {
    i = int(random(7));
    largePoint = maxSize;
    img = loadImage(images[i]);
    startTime = new Date();
    clicked = true;
    fill(0, 0, 0, 255);
    rect(window.innerWidth * 2/3, window.innerHeight * 3/4 + 8, 250, 15)
    fill(255, 255, 255, 255);
    text(titles[i], window.innerWidth * 2/3, window.innerHeight * 3/4 + 20);
  }
  if (clicked === true) {
    currentTime = new Date();
    if (currentTime - startTime > 10000) {
      if (largePoint > 16) {
        console.log(largePoint);
        startTime = currentTime;
        largePoint = largePoint/2;
      }
    }
    img.resize(window.innerWidth, window.innerHeight - 20);
    image(img, window.innerWidth, 0 , window.innerWidth * 5 / 6 , (window.innerHeight - 20) / 6);
    pointillize = map(random(window.innerWidth), 0, window.innerWidth, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    if (x < window.innerWidth * 5 / 6 || y > window.innerHeight/6) {
      color pix = img.get(x, y);
      fill(pix, 255 * (1 - (pointillize - 1)/maxSize));
      ellipse(x, y, pointillize, pointillize);
    }
    pointillize = map(random(window.innerWidth), 0, window.innerWidth, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    if (x < window.innerWidth * 5 / 6 || y > window.innerHeight/6) {
      color pix = img.get(x, y);
      fill(pix, 255 * (1 - (pointillize - 1)/maxSize));
      ellipse(x, y, pointillize, pointillize);
    }
    pointillize = map(random(window.innerWidth), 0, window.innerWidth, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    if (x < window.innerWidth * 5 / 6 || y > window.innerHeight/6) {
      color pix = img.get(x, y);
      fill(pix, 255 * (1 - (pointillize - 1)/maxSize));
      ellipse(x, y, pointillize, pointillize);
    }
    pointillize = map(random(window.innerWidth), 0, window.innerWidth, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    if (x < window.innerWidth * 5 / 6 || y > window.innerHeight/6) {
      color pix = img.get(x, y);
      fill(pix, 255 * (1 - (pointillize - 1)/maxSize));
      ellipse(x, y, pointillize, pointillize);
    }
  }

}

void keyPressed() {
  background(255);
}
