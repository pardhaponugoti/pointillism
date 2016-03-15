PImage img, nextImg;
int smallPoint, largePoint, screenWidth, screenHeight, startTime, currentTime;
String[] images = new String[8];
String[] titles = new String[8];
int i, j, x, y;
int maxSize = 256;
float point;
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
images[7] = './data/butterfly_ship.jpg';
titles[7] = 'Salvador Dali - Ship with Butterfly Sails';

void setup() {
  size(window.innerWidth, window.innerHeight);
  smallPoint = 4;
  i = int(random(8));
  nextImg = loadImage(images[i]);
  largePoint = maxSize;
  imageMode(CORNERS);
  noStroke();
  background(0);
  fill(255, 255, 255, 128);
  text("pointillism - A visual project by Pardha Ponugoti", window.innerWidth*2/3, window.innerHeight*3/4);
  text("click to begin | click to change paintings", window.innerWidth*2/3, window.innerHeight*3/4 + 20);
}

void mouseReleased() {
  fill(0, 0, 0, 255);
  rect(window.innerWidth * 2/3, window.innerHeight * 3/4 + 8, 250, 15)
  fill(255, 255, 255, 255);
  text(titles[i], window.innerWidth * 2/3, window.innerHeight * 3/4 + 20);
  i = (i + 5) % 8;
  largePoint = maxSize;
  img = nextImg;
  nextImg = loadImage(images[i]);
  startTime = new Date();
  clicked = true;
}

void draw() {
  if (clicked) {
    if (largePoint > 16) {
      if (new Date() - startTime > 7500) {
        startTime = new Date();
        largePoint = largePoint/2;
      }
    }
    img.resize(window.innerWidth, window.innerHeight);
    image(img, window.innerWidth, 0 , window.innerWidth * 5 / 6 , (window.innerHeight) / 6);
    point = map(random(256), 0, 256, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    fill(img.get(x, y), 255 * (1 - (point - 1)/maxSize));
    ellipse(x, y, point, point);
    point = map(random(256), 0, 256, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    fill(img.get(x, y), 255 * (1 - (point - 1)/maxSize));
    ellipse(x, y, point, point);
    point = map(random(256), 0, 256, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    fill(img.get(x, y), 255 * (1 - (point - 1)/maxSize));
    ellipse(x, y, point, point);
    point = map(random(256), 0, 256, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    fill(img.get(x, y), 255 * (1 - (point - 1)/maxSize));
    ellipse(x, y, point, point);
    point = map(random(256), 0, 256, smallPoint, largePoint);
    x = int(random(img.width));
    y = int(random(img.height));
    fill(img.get(x, y), 255 * (1 - (point - 1)/maxSize));
    ellipse(x, y, point, point);
  }

}


// point = map(random(256), 0, 256, smallPoint, largePoint);
// x = int(random(img.width));
// y = int(random(img.height));
// if (x < window.innerWidth * 5 / 6 || y > window.innerHeight/6) {
//   color pix = img.get(x, y);
//   fill(pix, 255 * (1 - (point - 1)/maxSize));
//   ellipse(x, y, point, point);
// }
// point = map(random(window.innerWidth), 0, window.innerWidth, smallPoint, largePoint);
// x = int(random(img.width));
// y = int(random(img.height));
// if (x < window.innerWidth * 5 / 6 || y > window.innerHeight/6) {
//   color pix = img.get(x, y);
//   fill(pix, 255 * (1 - (point - 1)/maxSize));
//   ellipse(x, y, point, point);
// }
// point = map(random(window.innerWidth), 0, window.innerWidth, smallPoint, largePoint);
// x = int(random(img.width));
// y = int(random(img.height));
// if (x < window.innerWidth * 5 / 6 || y > window.innerHeight/6) {
//   color pix = img.get(x, y);
//   fill(pix, 255 * (1 - (point - 1)/maxSize));
//   ellipse(x, y, point, point);
// }
