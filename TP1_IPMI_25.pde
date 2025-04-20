void setup(){
PImage selfie ; // Asigno una variable para la imagen
selfie = loadImage("data/selfie.jpg") ; // Sujeto la imagen cargada en la carpeta a la variable

///////////////////////////////////////////////////////////////////////////////////////////////

size(800,400) ; 
background(168,180,180) ; 
image(selfie,0,0,400,400) ;

////////////////////////////////////////////////////////////////////////////////////////////
translate(400,0);
//////////////////////////////// Techo //////////////////////////////

////////////////// Primer viga //////////////////////
pushStyle();
fill(144,157,166);
stroke(1);
quad(0,68,99,67,69,0,0,0);

beginShape();
 vertex(0,67);
 vertex(0,86);
 vertex(9,96);
 vertex(18,96);
 vertex(0,67);
 vertex(0,22);
 vertex(20,70);
 vertex(18,96);
endShape();
popStyle();

///////////////// Segunda viga /////////////////////

pushStyle();
fill(148,161,169);
stroke(1);
quad(69,0,99,67,111,67,81,0);
popStyle();

// sombra viga 2 //

pushStyle();
fill(147,166,181);
stroke(147,166,181);
quad(81,0,111,67,127,67,97,0);


// Viga 2 - Viga 3 //
fill(158,157,153);
stroke(158,157,153);
quad(97,0,116,68,201,68,201,0);

// Tercer viga //
fill(160,157,150);
stroke(148,129,114);
quad(193,0,201,68,216,68,214,0);

// sombra viga 3 //
fill(113,121,123);
stroke(113,121,123);
quad(214,0,216,68,240,68,240,0);

fill(112,107,101);
stroke(112,107,101);
quad(240,0,240,68,264,68,266,0);

fill(148,129,114);
stroke(1);
quad(266,0,264,68,290,68,299,0);

/////////////////// marca ////////////////////////
line(20,68,280,68);
line(20,67,290,67);
line(0,0,400,0);
popStyle();
///////////////////////////////////////////////////////////

///////////////////// Placard //////////////////
pushStyle();
fill(117,67,11);
quad(29,122,313,123,323,400,3,386);
/////////////////////////////////////////////////////////

//////////////// Cortina ///////////////////////////

fill(37,112,139);
beginShape();
vertex(304,81);
vertex(310,73);
vertex(306,67);
vertex(313,60);
vertex(309,54);
vertex(317,47);
vertex(313,36);
vertex(322,29);
vertex(320,21);
vertex(328,16);
vertex(326,4);
vertex(335,0);
vertex(400,0);
vertex(400,400);
vertex(319,280);
vertex(311,95);
vertex(304,81);
endShape();

popStyle();
//////////////////////////////////////////////////////////////

// Iluminación izq //
pushStyle();
strokeWeight(20);
stroke(195,165,157); 
bezier(9,400,15,380,130,290,140,300);

//// Remera ////
fill(115,76,69);
stroke(115,76,69);
rect(143,287,218,150,10,10,0,0);
triangle(134,320,0,415,134,400);

// Cuello //
fill(156,121,99);
stroke(86,60,47);
strokeWeight(10);
ellipse(192,319,133,125);

// Iluminación izq //
strokeWeight(20);
stroke(195,165,157); 
bezier(9,400,15,380,130,290,135,297);

// Iluminación der //
strokeWeight(70);
bezier(350,312,365,312,405,382,390,382);

popStyle();

////////////////////////////////////////////////////////////////

// Oreja izquierda //

pushStyle();

noStroke();
fill(228,203,186);
ellipse(117,250,20,20);
ellipse(113,228,20,40);
strokeWeight(2);
stroke(228,203,186);
quad(114,223,102,215,103,190,116,199);
noFill();
stroke(150);
strokeWeight(1);
arc(120,256,15,16,QUARTER_PI,PI+QUARTER_PI);

popStyle();

//////////////////////////////////////////////////////////////

pushStyle();

// Oreja derecha //
fill(228,203,186);
noStroke();
ellipse(289,244,20,22);
ellipse(290,221,20,32);
triangle(290,181,298,187,293,219);

popStyle();

/////////////////////////////////////////////////////////////////

// Cabello parte de atrás //
fill(89,45,0);
noStroke();
ellipse(200,112,210,150);

//////////////////////////
// Cara //
pushStyle();
fill(228,203,186);
noStroke();
ellipse(204,205,179,260);
stroke(228,203,186);
rect(168,310,75,50,10,20,20,30);
curve(130,0,123,261,191,351,200,150);
curve(231,200,231,354,283,258,200,170);
strokeWeight(20);
point(246,321);
popStyle();

// Cabello frente //
noStroke();
beginShape();
 vertex(114,160);
 vertex(125,146);
 vertex(145,130);
 vertex(162,119);
 vertex(188,158);
 vertex(240,150);
 vertex(285,148);
 vertex(299,91);
 vertex(201,42);
 vertex(133,70);
 vertex(114,160);
endShape();

// Ayuda de ChatGPT para los mechones porque me iba a volver loco (no sirvió de mucho) //

  stroke(74,64,62); // color marrón oscuro
  strokeWeight(0.8);  // trazo fino

  float centerX = 185;
  float centerY = 34;

  for (float a = -PI/3; a <= PI/3; a += 0.1) {
    float len = map(a, -PI/3, PI/3, 60, 100);
    float x1 = centerX;
    float y1 = centerY;
    float x2 = x1 + sin(a) * len;
    float y2 = y1 + cos(a) * len;
    line(x1, y1, x2, y2);
  }
////////////////////////////////////////////////////////////////

pushStyle();

// Ojo izquierdo //
// Blanco //
fill(244,244,244);
stroke(200);
arc(164,199,37,17,PI,TWO_PI,CLOSE);
arc(162,196,35,20,0,PI);

// Pupila //
fill(1);
ellipse(162,197,17,16);

stroke(91,46,0);
strokeWeight(10);
point(162,196);

stroke(255);
strokeWeight(5);
point(161,193);


// Párpado //
noFill();
stroke(60);
strokeWeight(1.5);
curve(140,270,137,199,182,190,182,230);


// Pestaña // 
noFill();
stroke(1);
strokeWeight(2);
curve(140,260,139,201,180,192,182,230);

popStyle();
///////////////////////////////////////////////////////////////////////
pushStyle();

// Ojo derecho //

// Blanco //
fill(255);
stroke(200);
arc(250,197,40,20,PI,TWO_PI,CLOSE);
arc(251,197,35,13,0,PI);

// Párpado //
noFill();
stroke(60);
strokeWeight(1.5);

curve(275,270,274,194,229,191,231,250);

// Pupila //
strokeWeight(1);
fill(1);
ellipse(250,194,16,16);

stroke(91,46,0);
strokeWeight(11);
point(250,194);

stroke(255);
strokeWeight(5);
point(250,189);

// Pestaña // 
noFill();
stroke(1);
strokeWeight(2);
curve(275,270,273,196,231,193,231,251);


popStyle();
/////////////////////////////////////////////////////////////////////////////////

pushStyle();
strokeWeight(1);

// Ceja derecha //

fill(40);
stroke(40);
beginShape();
 vertex(135,183);
 vertex(141,177);
 vertex(153,174);
 vertex(180,173);
 vertex(187,175);
 vertex(188,179);
 vertex(160,179);
 vertex(145,180);
 vertex(135,183);
endShape();

// Ceja izquierda //

beginShape();
vertex(224,180);
vertex(225,176);
vertex(237,172);
vertex(252,168);
vertex(267,170);
vertex(280,176);
vertex(258,173);
vertex(224,180);
endShape();

popStyle();

//////////////////////////////////////////////////////////////////

// Nariz //

pushStyle();
strokeWeight(3);
stroke(222,184,160);
line(191,182,181,241);
line(218,181,229,241);
fill(222,184,160);
ellipse(205,247,50,35);
noStroke();
fill(169,133,117);
quad(193,196,189,231,220,231,215,196);
quad(190,181,193,196,215,196,220,180);
triangle(189,231,206,245,220,231);
fill(228,203,186);
ellipse(206,245,20,15);

beginShape();
 vertex(199,258);
 vertex(196,277);
 vertex(205,281);
 vertex(216,278);
 vertex(212,257);
 vertex(205,259);
 vertex(199,258);
endShape();

fill(35);
arc(191,254,11,11,PI+QUARTER_PI,TWO_PI+QUARTER_PI);
arc(221,253,11,11,HALF_PI+QUARTER_PI,PI+HALF_PI+QUARTER_PI);

popStyle();

///////////////////////////////////////////////////////////////////////////

// Bigote //

pushStyle();

strokeWeight(1);
fill(180,176,173);
stroke(180,176,173);
beginShape();
 vertex(155,293);
 vertex(155,277);
 vertex(189,258);
 vertex(194,258);
 vertex(205,268);
 vertex(214,260);
 vertex(222,260);
 vertex(250,274);
 vertex(257,284);
 vertex(258,289);
 vertex(258,298);
 vertex(240,309);
 vertex(244,288);
 vertex(216,277);
 vertex(205,281);
 vertex(195,276);
 vertex(169,286);
 vertex(168,297);
 vertex(155,293);
endShape();



////////////////////////////////////////////////////////////////////////////

// Barba //

quad(124,266,126,282,152,330,155,293);

rect(180,311,45,10);

quad(155,293,193,311,174,354,152,330);

quad(225,315,285,259,282,280,265,316);

quad(225,311,265,316,234,358,209,313);

rect(172,318,70,42,20,20,20,20);

popStyle();


// Labios //

fill(255,136,136);
stroke(255,136,136);
strokeWeight(1);
beginShape();
 vertex(171,291);
 vertex(190,285);
 vertex(198,286);
 vertex(205,290);
 vertex(213,286);
 vertex(220,286);
 vertex(240,292);
 vertex(229,293);
 vertex(207,297);
 vertex(189,295);
 vertex(171,291);
endShape();

curve(100,100,171,291,240,291,100,260);
stroke(1);
strokeWeight(0.3);
line(171,291,206,297);
line(206,297,241,293);

/////////////////////////////////////////////////////////////////////////////////

// Cabello //// Intento de mechones... //


pushStyle();

stroke(155,78,0);
fill(155,78,0);
curve(550,34,190,34,98,120,300,118);
curve(100,34,190,34,98,120,-100,118);

stroke(74,64,62);
strokeWeight(3);
point(185,34);
strokeWeight(0.9);
noFill();
curve(-100,10,185,34,108,122,108,122);
curve(-100,10,186,34,109,122,108,122);
curve(-100,10,180,34,109,120,110,122);
curve(-100,10,182,34,109,120,110,122);
curve(-100,10,184,34,109,120,110,122);
curve(-100,10,188,34,109,123,110,122);
curve(-100,10,189,34,109,124,110,122);
curve(-100,10,190,34,109,126,110,122);
curve(-100,10,191,34,109,128,110,122);
curve(-100,10,192,34,109,130,110,122);
curve(-100,10,193,34,109,132,110,122);
curve(-100,10,193,35,109,132,110,122);
curve(-100,10,193,36,109,122,110,122);
curve(-100,10,193,37,109,122,110,122);
curve(-100,10,194,39,109,122,110,122);

line(185,34,165,168);
line(183,34,163,168);
line(181,34,161,168);
line(179,34,159,168);

line(173,119,232,158);
line(173,121,236,163);
line(173,123,236,165);
line(172,125,236,167);
line(172,127,210,167);
line(172,129,208,169);
line(172,131,206,171);
line(171,133,205,173);
line(171,135,204,175);
line(171,137,203,177);
line(169,139,201,178);
line(169,141,199,180);
line(168,143,199,182);

arc(145,142,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(145,144,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(143,146,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(141,148,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(156,135,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(154,137,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(153,139,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(150,143,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(142,132,30,30,QUARTER_PI,PI+QUARTER_PI);
arc(144,130,30,30,QUARTER_PI,PI+QUARTER_PI);

popStyle();
}
//////////////////////////////////////////////////////////////////

// Mi salvavidas //
void draw() {
println("x:");
println(mouseX);
println("y:");
println(mouseY);  
}
