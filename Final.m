% Clear the workspace
close all;
clearvars;
sca;

% Here we call some default settings for setting up Psychtoolbox
PsychDefaultSetup(2);

% Get the screen numbers
screens = Screen('Screens');

% Draw to the external screen if avaliable
screenNumber = max(screens);

% Define black and white
white = WhiteIndex(screenNumber);
black = BlackIndex(screenNumber);
grey = white / 2;
inc = white - grey;

% Open an on screen window
[window, windowRect] = PsychImaging('OpenWindow', screenNumber, black);

% Get the size of the on screen window
[screenXpixels, screenYpixels] = Screen('WindowSize', window);

% Query the frame duration
ifi = Screen('GetFlipInterval', window);

% Get the centre coordinate of the window
[xCenter, yCenter] = RectCenter(windowRect);

% Set up alpha-blending for smooth (anti-aliased) lines
Screen('BlendFunction', window, 'GL_SRC_ALPHA', 'GL_ONE_MINUS_SRC_ALPHA');

% Here we load in an image from file. This one is a image of rabbits that
% is included with PTB
int8 i=0;

theImageLocation1 = [filesep '1.jpg'];
theImage1 = imread(theImageLocation1);

theImageLocation2 = [filesep '2.jpg'];
theImage2 = imread(theImageLocation2);

theImageLocation3 = [filesep '3.jpg'];
theImage3 = imread(theImageLocation3);

theImageLocation4 = [filesep '4.jpg'];
theImage4 = imread(theImageLocation4);

theImageLocation5 = [filesep '5.jpg'];
theImage5 = imread(theImageLocation5);

theImageLocation6 = [filesep '6.jpg'];
theImage6 = imread(theImageLocation6);

theImageLocation7 = [filesep '7.jpg'];
theImage7 = imread(theImageLocation7);

theImageLocation8 = [filesep '8.jpg'];
theImage8 = imread(theImageLocation8);

theImageLocation9 = [filesep '9.jpg'];
theImage9 = imread(theImageLocation9);

theImageLocation0 = [filesep '0.jpg'];
theImage0 = imread(theImageLocation0);

theImageLocationQ = [filesep 'Q.jpg'];
theImageQ = imread(theImageLocationQ);

theImageLocationW = [filesep 'W.jpg'];
theImageW = imread(theImageLocationW);

theImageLocationE = [filesep 'E.jpg'];
theImageE = imread(theImageLocationE);

theImageLocationR = [filesep 'R.jpg'];
theImageR = imread(theImageLocationR);

theImageLocationT = [filesep 'T.jpg'];
theImageT = imread(theImageLocationT);

theImageLocationY = [filesep 'Y.jpg'];
theImageY = imread(theImageLocationY);

theImageLocationU = [filesep 'U.jpg'];
theImageU = imread(theImageLocationU);

theImageLocationI = [filesep 'I.jpg'];
theImageI = imread(theImageLocationI);

theImageLocationO = [filesep 'O.jpg'];
theImageO = imread(theImageLocationO);

theImageLocationP = [filesep 'P.jpg'];
theImageP = imread(theImageLocationP);


theImageLocationA = [filesep 'A.jpg'];
theImageA = imread(theImageLocationA);

theImageLocationS = [filesep 'S.jpg'];
theImageS = imread(theImageLocationS);

theImageLocationD = [filesep 'D.jpg'];
theImageD = imread(theImageLocationD);

theImageLocationF = [filesep 'F.jpg'];
theImageF = imread(theImageLocationF);

theImageLocationG = [filesep 'G.jpg'];
theImageG = imread(theImageLocationG);

theImageLocationH = [filesep 'H.jpg'];
theImageH = imread(theImageLocationH);

theImageLocationJ = [filesep 'J.jpg'];
theImageJ = imread(theImageLocationJ);

theImageLocationK = [filesep 'K.jpg'];
theImageK = imread(theImageLocationK);

theImageLocationL = [filesep 'L.jpg'];
theImageL = imread(theImageLocationL);

theImageLocationZ = [filesep 'Z.jpg'];
theImageZ = imread(theImageLocationZ);

theImageLocationX = [filesep 'X.jpg'];
theImageX = imread(theImageLocationX);

theImageLocationC = [filesep 'C.jpg'];
theImageC = imread(theImageLocationC);

theImageLocationV = [filesep 'V.jpg'];
theImageV = imread(theImageLocationV);

theImageLocationB = [filesep 'B.jpg'];
theImageB = imread(theImageLocationB);

theImageLocationN= [filesep 'N.jpg'];
theImageN = imread(theImageLocationN);

theImageLocationM= [filesep 'M.jpg'];
theImageM = imread(theImageLocationM);

theImageLocationcomma = [filesep ',.jpg'];
theImagecomma = imread(theImageLocationcomma);

theImageLocationback = [filesep 'back.jpg'];
theImageback = imread(theImageLocationback);

theImageLocationdot = [filesep 'dot.jpg'];
theImagedot = imread(theImageLocationdot);

theImageLocationspace = [filesep 'space.jpg'];
theImagespace = imread(theImageLocationspace);

% Get the size of the image

% Here we check if the image is too big to fit on the screen and abort if
% it is. See ImageRescaleDemo to see how to rescale an image.

% Make the image into a texture
imageTexture1 = Screen('MakeTexture', window, theImage1);
imageTexture2 = Screen('MakeTexture', window, theImage2);
imageTexture3 = Screen('MakeTexture', window, theImage3);
imageTexture4 = Screen('MakeTexture', window, theImage4);
imageTexture5 = Screen('MakeTexture', window, theImage5);
imageTexture6 = Screen('MakeTexture', window, theImage6);
imageTexture7 = Screen('MakeTexture', window, theImage7);
imageTexture8 = Screen('MakeTexture', window, theImage8);
imageTexture9 = Screen('MakeTexture', window, theImage9);
imageTexture0 = Screen('MakeTexture', window, theImage0);
imageTextureQ = Screen('MakeTexture', window, theImageQ);
imageTextureW = Screen('MakeTexture', window, theImageW);
imageTextureE = Screen('MakeTexture', window, theImageE);
imageTextureR = Screen('MakeTexture', window, theImageR);
imageTextureT = Screen('MakeTexture', window, theImageT);
imageTextureY = Screen('MakeTexture', window, theImageY);
imageTextureU = Screen('MakeTexture', window, theImageU);
imageTextureI = Screen('MakeTexture', window, theImageI);
imageTextureO = Screen('MakeTexture', window, theImageO);
imageTextureP = Screen('MakeTexture', window, theImageP);
imageTextureA = Screen('MakeTexture', window, theImageA);
imageTextureS = Screen('MakeTexture', window, theImageS);
imageTextureD = Screen('MakeTexture', window, theImageD);
imageTextureF = Screen('MakeTexture', window, theImageF);
imageTextureG = Screen('MakeTexture', window, theImageG);
imageTextureH = Screen('MakeTexture', window, theImageH);
imageTextureJ = Screen('MakeTexture', window, theImageJ);
imageTextureK = Screen('MakeTexture', window, theImageK);
imageTextureL = Screen('MakeTexture', window, theImageL);
imageTextureZ = Screen('MakeTexture', window, theImageZ);
imageTextureX = Screen('MakeTexture', window, theImageX);
imageTextureC = Screen('MakeTexture', window, theImageC);
imageTextureV = Screen('MakeTexture', window, theImageV);
imageTextureB = Screen('MakeTexture', window, theImageB);
imageTextureN = Screen('MakeTexture', window, theImageN);
imageTextureM = Screen('MakeTexture', window, theImageM);
imageTexturedot = Screen('MakeTexture', window, theImagedot);
imageTexturecomma= Screen('MakeTexture', window, theImagecomma);
imageTextureback = Screen('MakeTexture', window, theImageback);
imageTexturespace = Screen('MakeTexture', window, theImagespace);
% Our will fade in and out with a sine wave function
% See: http://en.wikipedia.org/wiki/Sine_wave
amplitude = 0.5;
frequency = [8 8.2 8.4 8.6 8.8 9 9.2 9.4 9.6 9.8;10 10.2 10.4 10.6 10.8 11 11.2 11.4 11.6 11.8;12 12.2 12.4 12.6 12.8 13 13.2 13.4 13.6 13.8;14 14.2 14.4 14.6 14.8 15 15.2 15.4 15.6 15.8];
angFreq = zeros(1, 40);
startPhase = [0.0 0.35 0.70 1.05 1.40 1.75 0.10 0.45 0.80 1.15;1.50 1.85 0.20 0.55 0.90 1.25 1.60 1.95 0.30 0.65;1 1.35 1.70 0.05 0.40 0.75 1.10 1.45 1.80 0.15;0.50 0.85 1.20 1.55 1.90 0.25 0.60 0.95 1.30 1.65];
 
thisContrast=zeros(4,10);
for i=1:4
    for j=1:10
angFreq(i,j) = 2 * pi * frequency(i,j);
    end 
i=i+1;
end

time = 0;
a=183;
b=262;
int8 j;
% Presentation loop (press any key to exit)
while ~KbCheck

    % Position of the square on this frame
 for i=1:4
     for j=1:10
     
            thisContrast(i,j)= amplitude * sin(angFreq(i,j) * time + startPhase(i,j)) + amplitude;
     end
     
            i=i+1;

 
 end
    % Draw the image to the screen

  Screen('DrawTexture', window, imageTexture1, [], [0,0,a,b], 0, [], thisContrast(1,1));
  Screen('DrawTexture', window, imageTexture2, [], [a+10,0,a*2+10,b], 0, [], thisContrast(1,2));
  Screen('DrawTexture', window, imageTexture3, [], [2*a+20,0,a*3+20,b], 0, [], thisContrast(1,3));
  Screen('DrawTexture', window, imageTexture4, [], [a*3+30,0,a*4+30,b], 0, [], thisContrast(1,4));
  Screen('DrawTexture', window, imageTexture5, [], [a*4+40,0,a*5+40,b], 0, [], thisContrast(1,5));
  Screen('DrawTexture', window, imageTexture6, [], [a*5+50,0,a*6+50,b], 0, [], thisContrast(1,6));
  Screen('DrawTexture', window, imageTexture7, [], [6*a+60,0,a*7+60,b], 0, [], thisContrast(1,7));
  Screen('DrawTexture', window, imageTexture8, [], [a*7+70,0,a*8+70,b], 0, [], thisContrast(1,8));
  Screen('DrawTexture', window, imageTexture9, [], [a*8+80,0,a*9+80,b], 0, [], thisContrast(1,9));
  Screen('DrawTexture', window, imageTexture0, [], [a*9+90,0,a*10+90,b], 0, [], thisContrast(1,10));
  Screen('DrawTexture', window, imageTextureQ, [], [0,b+10,a,b*2+10], 0, [], thisContrast(2,1));
  Screen('DrawTexture', window, imageTextureW, [], [a+10,b+10,a*2+10,b*2+10], 0, [], thisContrast(2,2));
  Screen('DrawTexture', window, imageTextureE, [], [a*2+20,b+10,a*3+20,b*2+10], 0, [], thisContrast(2,3));
  Screen('DrawTexture', window, imageTextureR, [], [a*3+30,b+10,a*4+30,b*2+10], 0, [], thisContrast(2,4));
  Screen('DrawTexture', window, imageTextureT, [], [a*4+40,b+10,a*5+40,b*2+10], 0, [], thisContrast(2,5));
  Screen('DrawTexture', window, imageTextureY, [], [a*5+50,b+10,a*6+50,b*2+10], 0, [], thisContrast(2,6));
  Screen('DrawTexture', window, imageTextureU, [], [a*6+60,b+10,a*7+60,b*2+10], 0, [], thisContrast(2,7));
  Screen('DrawTexture', window, imageTextureI, [], [a*7+70,b+10,a*8+70,b*2+10], 0, [], thisContrast(2,8));
  Screen('DrawTexture', window, imageTextureO, [], [a*8+80,b+10,a*9+80,b*2+10], 0, [], thisContrast(2,9));
  Screen('DrawTexture', window, imageTextureP, [], [a*9+90,b+10,a*10+90,b*2+10], 0, [], thisContrast(2,10));
  Screen('DrawTexture', window, imageTextureA, [], [0,b*2+20,a,b*3+20], 0, [], thisContrast(3,1));
  Screen('DrawTexture', window, imageTextureS, [], [a+10,b*2+20,a*2+10,b*3+20], 0, [], thisContrast(3,2));
  Screen('DrawTexture', window, imageTextureD, [], [a*2+20,b*2+20,a*3+20,b*3+20], 0, [], thisContrast(3,3));
  Screen('DrawTexture', window, imageTextureF, [], [a*3+30,b*2+20,a*4+30,b*3+20], 0, [], thisContrast(3,4));
  Screen('DrawTexture', window, imageTextureG, [], [a*4+40,b*2+20,a*5+40,b*3+20], 0, [], thisContrast(3,5));
  Screen('DrawTexture', window, imageTextureH, [], [a*5+50,b*2+20,a*6+50,b*3+20], 0, [], thisContrast(3,6));
  Screen('DrawTexture', window, imageTextureJ, [], [a*6+60,b*2+20,a*7+60,b*3+20], 0, [], thisContrast(3,7));
  Screen('DrawTexture', window, imageTextureK, [], [a*7+70,b*2+20,a*8+70,b*3+20], 0, [], thisContrast(3,8));
  Screen('DrawTexture', window, imageTextureL, [], [a*8+80,b*2+20,a*9+80,b*3+20], 0, [], thisContrast(3,9));
  Screen('DrawTexture', window, imageTexturespace, [], [a*9+90,b*2+20,a*10+90,b*3+20], 0, [], thisContrast(3,10));
  Screen('DrawTexture', window, imageTextureZ, [], [0,b*3+30,a,b*4+30], 0, [], thisContrast(4,1));
  Screen('DrawTexture', window, imageTextureX, [], [a+10,b*3+20,a*2+10,b*4+30],0, [], thisContrast(4,2));
  Screen('DrawTexture', window, imageTextureC, [], [a*2+20,b*3+30,a*3+20,b*4+30], 0, [], thisContrast(4,3));
  Screen('DrawTexture', window, imageTextureV, [], [a*3+30,b*3+30,a*4+30,b*4+30], 0, [], thisContrast(4,4));
  Screen('DrawTexture', window, imageTextureB, [], [a*4+40,b*3+30,a*5+40,b*4+30], 0, [], thisContrast(4,5));
  Screen('DrawTexture', window, imageTextureN, [], [a*5+50,b*3+30,a*6+50,b*4+30], 0, [], thisContrast(4,6));
  Screen('DrawTexture', window, imageTextureM, [], [a*6+60,b*3+20,a*7+60,b*4+30], 0, [], thisContrast(4,7));
  Screen('DrawTexture', window, imageTexturecomma, [], [a*7+70,b*3+30,a*8+70,b*4+30], 0, [], thisContrast(4,8));
  Screen('DrawTexture', window, imageTexturedot, [], [a*8+80,b*3+30,a*9+80,b*4+30], 0, [], thisContrast(4,9));
  Screen('DrawTexture', window, imageTextureback, [], [a*9+90,b*3+30,a*10+90,b*4+30], 0, [], thisContrast(4,10));

    % Increment the time
    time = time + ifi;

    % Flip to the screen
    Screen('Flip', window);

end

% Clear the screen
sca;