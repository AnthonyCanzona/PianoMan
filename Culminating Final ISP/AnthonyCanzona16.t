%Anthony Canzona
%Mrs.Basaraba
%June 8, 2018
%A program that makes a keyboard into a musical piano that can record music

import GUI

%Screen Setup
var mainWin := Window.Open ("position:0;0,graphics:max;max")
setscreen ("nocursor")

%Declaration Section
var timing := "4"
var note : string (1) := ""
var start, beginButton, instruction, exitButton : int
var song := ""
var delayT := 4

%Forwarded Procedures
forward procedure mainMenu
forward procedure userInput
forward procedure display

%Central GUI Buttons
var menu := GUI.CreateButton (620, 10, 50, "Main Menu", mainMenu)
GUI.Hide (menu)

var recorder := GUI.CreateButtonFull (600, 40, 100, "Listen to Recording", display, 50, KEY_ENTER, true)
GUI.Hide (recorder)

var back := GUI.CreateButtonFull (615, 100, 100, "Go Back", userInput, 25, 'B', false)
GUI.Hide (back)

%Program Title
procedure title
    cls
    var titleFont : int
    titleFont := Font.New ("Forte:20")
    Font.Draw ("The Musical Keyboard", 520, 640, titleFont, black)
end title

%Introduction Music
process introMusic
    Music.PlayFileLoop ("Billy Joel - Piano Man.mp3")
end introMusic

%Procedure to Replay Made Song
body procedure display
    title
    GUI.Hide (recorder)

    %On Screen Text
    var mainFont := Font.New ("Impact:30")
    delay (100)
    Font.Draw ("You are now listening to your own 'Instrumental Composition'", 140, maxy div 2, mainFont, black)

    %Plays The Recorded Song
    play (song)

    %GUI Buttons
    GUI.Show (back)
    GUI.Show (recorder)
    GUI.Show (menu)
end display

%Makes the Computer Keyboard Keys Into The Piano Keys
process pianoFunction
    var x := delayT * 30

    %Turns Keyboard Inputs Into Piano Notes
    loop
	getch (note)
	if note = "1" then
	    song := song + timing + "c+"
	    drawfillbox (295, 271, 313, 400, 14)
	    delay (x)
	    drawfillbox (294, 270, 314, 401, black)
	    play (timing + "c+")
	elsif note = "2" then
	    song := song + timing + "d+"
	    drawfillbox (348, 271, 366, 400, 14)
	    delay (x)
	    drawfillbox (347, 270, 367, 401, black)
	    play (timing + "d+")
	elsif note = "3" then
	    song := song + timing + "f+"
	    drawfillbox (454, 271, 472, 400, 14)
	    delay (x)
	    drawfillbox (453, 270, 473, 401, black)
	    play (timing + "f+")
	elsif note = "4" then
	    song := song + timing + "g+"
	    drawfillbox (507, 271, 525, 400, 14)
	    delay (x)
	    drawfillbox (506, 270, 526, 401, black)
	    play (timing + "g+")
	elsif note = "5" then
	    song := song + timing + "a+"
	    drawfillbox (558, 271, 578, 400, 14)
	    delay (x)
	    drawfillbox (559, 270, 579, 401, black)
	    play (timing + "a+")
	elsif note = "q" then
	    song := song + timing + "c"
	    drawfillbox (254, 200, 302, 400, 14)
	    drawfillbox (294, 270, 314, 401, black)
	    delay (x)
	    drawfillbox (254, 200, 302, 400, 0)
	    drawfillbox (294, 270, 314, 401, black)
	    play (timing + "c")
	elsif note = "w" then
	    song := song + timing + "d"
	    drawfillbox (305, 200, 355, 400, 14)
	    drawfillbox (294, 270, 314, 401, black)
	    drawfillbox (347, 270, 367, 401, black)
	    delay (x)
	    drawfillbox (305, 200, 355, 400, 0)
	    drawfillbox (294, 270, 314, 401, black)
	    drawfillbox (347, 270, 367, 401, black)
	    play (timing + "d")
	elsif note = "e" then
	    song := song + timing + "e"
	    drawfillbox (358, 200, 408, 400, 14)
	    drawfillbox (347, 270, 367, 401, black)
	    delay (x)
	    drawfillbox (358, 200, 408, 400, 0)
	    drawfillbox (347, 270, 367, 401, black)
	    play (timing + "e")
	elsif note = "r" then
	    song := song + timing + "f"
	    drawfillbox (411, 200, 461, 400, 14)
	    drawfillbox (453, 270, 473, 401, black)
	    delay (x)
	    drawfillbox (411, 200, 461, 400, 0)
	    drawfillbox (453, 270, 473, 401, black)
	    play (timing + "f")
	elsif note = "t" then
	    song := song + timing + "g"
	    drawfillbox (464, 200, 514, 400, 14)
	    drawfillbox (506, 270, 526, 401, black)
	    drawfillbox (453, 270, 473, 401, black)
	    delay (x)
	    drawfillbox (464, 200, 514, 400, 0)
	    drawfillbox (506, 270, 526, 401, black)
	    drawfillbox (453, 270, 473, 401, black)
	    play (timing + "g")
	elsif note = "y" then
	    song := song + timing + "a"
	    drawfillbox (517, 200, 567, 400, 14)
	    drawfillbox (506, 270, 526, 401, black)
	    drawfillbox (559, 270, 579, 401, black)
	    delay (x)
	    drawfillbox (517, 200, 567, 400, 0)
	    drawfillbox (506, 270, 526, 401, black)
	    drawfillbox (559, 270, 579, 401, black)
	    play (timing + "a")
	elsif note = "u" then
	    song := song + timing + "b"
	    drawfillbox (570, 200, 620, 400, 14)
	    drawfillbox (559, 270, 579, 401, black)
	    delay (x)
	    drawfillbox (570, 200, 620, 400, 0)
	    drawfillbox (559, 270, 579, 401, black)
	    play (timing + "b")
	elsif note = "a" then
	    song := song + timing + ">c+<"
	    drawfillbox (666, 271, 684, 400, 14)
	    delay (x)
	    drawfillbox (665, 270, 685, 401, black)
	    play (timing + ">c+<")
	elsif note = "s" then
	    song := song + timing + ">d+<"
	    drawfillbox (719, 271, 737, 400, 14)
	    delay (x)
	    drawfillbox (718, 270, 738, 401, black)
	    play (timing + ">d+<")
	elsif note = "d" then
	    song := song + timing + ">f+<"
	    drawfillbox (825, 271, 843, 400, 14)
	    delay (x)
	    drawfillbox (824, 270, 844, 401, black)
	    play (timing + ">f+<")
	elsif note = "f" then
	    song := song + timing + ">g+<"
	    drawfillbox (878, 271, 896, 400, 14)
	    delay (x)
	    drawfillbox (877, 270, 897, 401, black)
	    play (timing + ">g+<")
	elsif note = "g" then
	    song := song + timing + ">a+<"
	    drawfillbox (931, 271, 949, 400, 14)
	    delay (x)
	    drawfillbox (930, 270, 950, 401, black)
	    play (timing + ">a+<")
	elsif note = "i" then
	    song := song + timing + ">c<"
	    drawfillbox (623, 200, 673, 400, 14)
	    drawfillbox (665, 270, 685, 401, black)
	    delay (x)
	    drawfillbox (623, 200, 673, 400, 0)
	    drawfillbox (665, 270, 685, 401, black)
	    play (timing + ">c<")
	elsif note = "z" then
	    song := song + timing + ">d<"
	    drawfillbox (676, 200, 726, 400, 14)
	    drawfillbox (665, 270, 685, 401, black)
	    drawfillbox (718, 270, 738, 401, black)
	    delay (x)
	    drawfillbox (676, 200, 726, 400, 0)
	    drawfillbox (665, 270, 685, 401, black)
	    drawfillbox (718, 270, 738, 401, black)
	    play (timing + ">d<")
	elsif note = "x" then
	    song := song + timing + ">e<"
	    drawfillbox (729, 200, 779, 400, 14)
	    drawfillbox (718, 270, 738, 401, black)
	    delay (x)
	    drawfillbox (729, 200, 779, 400, 0)
	    drawfillbox (718, 270, 738, 401, black)
	    play (timing + ">e<")
	elsif note = "c" then
	    song := song + timing + ">f<"
	    drawfillbox (782, 200, 832, 400, 14)
	    drawfillbox (824, 270, 844, 401, black)
	    delay (x)
	    drawfillbox (782, 200, 832, 400, 0)
	    drawfillbox (824, 270, 844, 401, black)
	    play (timing + ">f<")
	elsif note = "v" then
	    song := song + timing + ">g<"
	    drawfillbox (835, 200, 885, 400, 14)
	    drawfillbox (824, 270, 844, 401, black)
	    drawfillbox (877, 270, 897, 401, black)
	    delay (x)
	    drawfillbox (835, 200, 885, 400, 0)
	    drawfillbox (824, 270, 844, 401, black)
	    drawfillbox (877, 270, 897, 401, black)
	    play (timing + ">g<")
	elsif note = "b" then
	    song := song + timing + ">a<"
	    drawfillbox (888, 200, 938, 400, 14)
	    drawfillbox (877, 270, 897, 401, black)
	    drawfillbox (930, 270, 950, 401, black)
	    delay (x)
	    drawfillbox (888, 200, 938, 400, 0)
	    drawfillbox (877, 270, 897, 401, black)
	    drawfillbox (930, 270, 950, 401, black)
	    play (timing + ">a<")
	elsif note = "n" then
	    song := song + timing + ">b<"
	    drawfillbox (941, 200, 991, 400, 14)
	    drawfillbox (930, 270, 950, 401, black)
	    delay (x)
	    drawfillbox (941, 200, 991, 400, 0)
	    drawfillbox (930, 270, 950, 401, black)
	    play (timing + ">b<")
	elsif note = "m" then
	    song := song + timing + ">>c<<"
	    drawfillbox (994, 200, 1044, 400, 14)
	    delay (x)
	    drawfillbox (994, 200, 1044, 400, 0)
	    play (timing + ">>c<<")
	elsif note = KEY_ENTER then
	    exit
	else
	    var errorTrap := Window.Open ("position:0;0,graphics:400;300")
	    put "Error:"
	    put ""
	    put "That key '", note, "' is not a valid input."
	    put "The piano only deals with 25 keys on the keyboard."
	    put ""
	    put "Press any key to continue ..."
	    loop
		exit when hasch
	    end loop
	    Window.Close (errorTrap)
	end if
    end loop

    %Continue GUI Buttons
    drawfillbox (550, 55, 800, 80, 0)
    GUI.Show (recorder)
    GUI.Show (menu)

end pianoFunction

%Make an Option to Choose the Note's Duration Time
process noteDuration
    var mouseX, mouseY, button : int
    %Creates the Buttons to Change the Notes Duration
    loop
	mousewhere (mouseX, mouseY, button)
	if button = 1 then
	    if mouseX > 463 and mouseX < 568 and mouseY > 500 and mouseY < 600 then
		timing := "6"
		delayT := 6
		drawbox (464, 501, 567, 599, brightgreen)
		drawbox (570, 501, 673, 599, 0)
		drawbox (676, 501, 779, 599, 0)
		drawbox (782, 501, 885, 599, 0)
		drawbox (888, 501, 991, 599, 0)
	    elsif mouseX > 569 and mouseX < 674 and mouseY > 500 and mouseY < 600 then
		timing := "8"
		delayT := 8
		drawbox (464, 501, 567, 599, 0)
		drawbox (570, 501, 673, 599, brightgreen)
		drawbox (676, 501, 779, 599, 0)
		drawbox (782, 501, 885, 599, 0)
		drawbox (888, 501, 991, 599, 0)
	    elsif mouseX > 675 and mouseX < 780 and mouseY > 500 and mouseY < 600 then
		timing := "4"
		delayT := 4
		drawbox (464, 501, 567, 599, 0)
		drawbox (570, 501, 673, 599, 0)
		drawbox (676, 501, 779, 599, brightgreen)
		drawbox (782, 501, 885, 599, 0)
		drawbox (888, 501, 991, 599, 0)
	    elsif mouseX > 781 and mouseX < 886 and mouseY > 500 and mouseY < 600 then
		timing := "2"
		delayT := 2
		drawbox (464, 501, 567, 599, 0)
		drawbox (570, 501, 673, 599, 0)
		drawbox (676, 501, 779, 599, 0)
		drawbox (782, 501, 885, 599, brightgreen)
		drawbox (888, 501, 991, 599, 0)
	    elsif mouseX > 887 and mouseX < 992 and mouseY > 500 and mouseY < 600 then
		timing := "1"
		delayT := 1
		drawbox (464, 501, 567, 599, 0)
		drawbox (570, 501, 673, 599, 0)
		drawbox (676, 501, 779, 599, 0)
		drawbox (782, 501, 885, 599, 0)
		drawbox (888, 501, 991, 599, brightgreen)
	    elsif mouseX > 310 and mouseX < 440 and mouseY > 520 and mouseY < 580 then
		song := ""
		drawbox (311, 521, 439, 579, 12)
		delay (500)
		drawbox (311, 521, 439, 579, 0)
	    elsif note = KEY_ENTER then
		note := ""
		exit
	    else
	    end if
	end if
    end loop
end noteDuration

%The User Input Piano Display
body procedure userInput

    Music.PlayFileStop

    var enterFont := Font.New ("Times New Roman:12")
    var timeFont := Font.New ("Impact:20")
    var noteFont := Font.New ("Arial:10")

    title
    GUI.Hide (beginButton)
    GUI.Hide (instruction)
    GUI.Hide (exitButton)
    GUI.Hide (back)

    %Draws The White Piano Keys
    drawbox (253, 199, 303, 401, 16)
    drawbox (304, 199, 356, 401, 16)
    drawbox (357, 199, 409, 401, 16)
    drawbox (410, 199, 462, 401, 16)
    drawbox (463, 199, 515, 401, 16)
    drawbox (516, 199, 568, 401, 16)
    drawbox (569, 199, 621, 401, 16)
    drawbox (622, 199, 674, 401, 16)
    drawbox (675, 199, 727, 401, 16)
    drawbox (728, 199, 780, 401, 16)
    drawbox (781, 199, 833, 401, 16)
    drawbox (834, 199, 886, 401, 16)
    drawbox (887, 199, 939, 401, 16)
    drawbox (940, 199, 992, 401, 16)
    drawbox (993, 199, 1045, 401, 16)

    %Draws The Black Piano Keys
    drawfillbox (294, 270, 314, 401, black)
    drawfillbox (347, 270, 367, 401, black)
    drawfillbox (453, 270, 473, 401, black)
    drawfillbox (506, 270, 526, 401, black)
    drawfillbox (559, 270, 579, 401, black)
    drawfillbox (665, 270, 685, 401, black)
    drawfillbox (718, 270, 738, 401, black)
    drawfillbox (824, 270, 844, 401, black)
    drawfillbox (877, 270, 897, 401, black)
    drawfillbox (930, 270, 950, 401, black)

    %Draws The Duration Option
    drawbox (463, 500, 568, 600, black)
    drawbox (569, 500, 674, 600, black)
    drawbox (675, 500, 780, 600, black)
    drawbox (781, 500, 886, 600, black)
    drawbox (887, 500, 992, 600, black)

    %Draws New Song Option Box
    drawbox (310, 520, 440, 580, black)

    %Draws The Highlight Feature For The Duration Feature
    drawbox (464, 501, 567, 599, 0)
    drawbox (570, 501, 673, 599, 0)
    drawbox (676, 501, 779, 599, brightgreen)
    drawbox (782, 501, 885, 599, 0)
    drawbox (888, 501, 991, 599, 0)

    %Duration Feature Lables
    Font.Draw ("1/16", 495, 550, timeFont, black)
    Font.Draw ("1/8", 606, 550, timeFont, black)
    Font.Draw ("1/4", 712, 550, timeFont, black)
    Font.Draw ("1/2", 816, 550, timeFont, black)
    Font.Draw ("1", 938, 550, timeFont, black)

    %Titles
    Font.Draw ("New Song", 320, 540, timeFont, black)
    Font.Draw ("Note Length", 600, 470, timeFont, black)
    Font.Draw ("Musical Note:", 160, 160, noteFont, black)
    Font.Draw ("Keyboard Key:", 160, 120, noteFont, black)

    %Draws Note Lables
    Font.Draw ("C#", 297, 160, noteFont, black)
    Font.Draw ("D#", 350, 160, noteFont, black)
    Font.Draw ("F#", 456, 160, noteFont, black)
    Font.Draw ("G#", 509, 160, noteFont, black)
    Font.Draw ("A#", 562, 160, noteFont, black)
    Font.Draw ("C", 273, 160, noteFont, black)
    Font.Draw ("D", 326, 160, noteFont, black)
    Font.Draw ("E", 379, 160, noteFont, black)
    Font.Draw ("F", 432, 160, noteFont, black)
    Font.Draw ("G", 485, 160, noteFont, black)
    Font.Draw ("A", 538, 160, noteFont, black)
    Font.Draw ("B", 591, 160, noteFont, black)
    Font.Draw ("C", 644, 160, noteFont, black)
    Font.Draw ("C#", 670, 160, noteFont, black)
    Font.Draw ("D#", 723, 160, noteFont, black)
    Font.Draw ("F#", 829, 160, noteFont, black)
    Font.Draw ("G#", 882, 160, noteFont, black)
    Font.Draw ("A#", 935, 160, noteFont, black)
    Font.Draw ("D", 697, 160, noteFont, black)
    Font.Draw ("E", 750, 160, noteFont, black)
    Font.Draw ("F", 803, 160, noteFont, black)
    Font.Draw ("G", 856, 160, noteFont, black)
    Font.Draw ("A", 909, 160, noteFont, black)
    Font.Draw ("B", 962, 160, noteFont, black)
    Font.Draw ("C", 1015, 160, noteFont, black)

    %Draws Key Lables
    Font.Draw ("1", 297, 120, noteFont, black)
    Font.Draw ("2", 350, 120, noteFont, black)
    Font.Draw ("3", 456, 120, noteFont, black)
    Font.Draw ("4", 509, 120, noteFont, black)
    Font.Draw ("5", 562, 120, noteFont, black)
    Font.Draw ("Q", 273, 120, noteFont, black)
    Font.Draw ("W", 326, 120, noteFont, black)
    Font.Draw ("E", 379, 120, noteFont, black)
    Font.Draw ("R", 432, 120, noteFont, black)
    Font.Draw ("T", 485, 120, noteFont, black)
    Font.Draw ("Y", 538, 120, noteFont, black)
    Font.Draw ("U", 591, 120, noteFont, black)
    Font.Draw ("I", 644, 120, noteFont, black)
    Font.Draw ("A", 670, 120, noteFont, black)
    Font.Draw ("S", 723, 120, noteFont, black)
    Font.Draw ("D", 829, 120, noteFont, black)
    Font.Draw ("F", 882, 120, noteFont, black)
    Font.Draw ("G", 935, 120, noteFont, black)
    Font.Draw ("Z", 697, 120, noteFont, black)
    Font.Draw ("X", 750, 120, noteFont, black)
    Font.Draw ("C", 803, 120, noteFont, black)
    Font.Draw ("V", 856, 120, noteFont, black)
    Font.Draw ("B", 909, 120, noteFont, black)
    Font.Draw ("N", 962, 120, noteFont, black)
    Font.Draw ("M", 1015, 120, noteFont, black)

    Font.Draw ("Press 'ENTER' to Continue...", 550, 60, noteFont, black)

    %Piano Functions
    fork pianoFunction
    fork noteDuration

end userInput

%A Procedure To Display The Programs Instructions and Button Purposes
procedure Instructions
    title

    %Stops the Music
    Music.PlayFileStop

    GUI.Hide (beginButton)
    GUI.Hide (instruction)
    GUI.Hide (exitButton)

    var fontTitle, fontInstruct : int

    fontTitle := Font.New ("New Time Roman:16")
    fontInstruct := Font.New ("New Times Roman:12")

    %The Games Instructions Text
    Font.Draw ("Instructions:", 590, 600, fontTitle, black)
    Font.Draw ("This program is specifically made to play and record your personal songs!", 100, 570, fontInstruct, black)
    Font.Draw ("Key Correspondents:", 100, 545, fontInstruct, black)
    Font.Draw ("Q = note c octave 1", 100, 520, fontInstruct, black)
    Font.Draw ("W = note d octave 1", 100, 505, fontInstruct, black)
    Font.Draw ("E = note e octave 1", 100, 490, fontInstruct, black)
    Font.Draw ("R = note f octave 1", 100, 475, fontInstruct, black)
    Font.Draw ("T = note g octave 1", 100, 460, fontInstruct, black)
    Font.Draw ("Y = note a octave 1", 100, 445, fontInstruct, black)
    Font.Draw ("U = note b octave 1", 100, 430, fontInstruct, black)

    Font.Draw ("I = note c octave 2", 100, 415, fontInstruct, black)
    Font.Draw ("Z = note d octave 2", 100, 400, fontInstruct, black)
    Font.Draw ("X = note e octave 2", 100, 385, fontInstruct, black)
    Font.Draw ("C = note f octave 2", 100, 370, fontInstruct, black)
    Font.Draw ("V = note g octave 2", 100, 355, fontInstruct, black)
    Font.Draw ("B = note a octave 2", 100, 340, fontInstruct, black)
    Font.Draw ("N = note b octave 2", 100, 325, fontInstruct, black)

    Font.Draw ("M = note c octave 3", 100, 310, fontInstruct, black)

    Font.Draw ("1 = note c sharp octave 1", 100, 295, fontInstruct, black)
    Font.Draw ("2 = note d sharp octave 1", 100, 280, fontInstruct, black)
    Font.Draw ("3 = note e sharp octave 1", 100, 265, fontInstruct, black)
    Font.Draw ("4 = note f sharp octave 1", 100, 250, fontInstruct, black)
    Font.Draw ("5 = note g sharp octave 1", 100, 235, fontInstruct, black)

    Font.Draw ("A = note c sharp octave 2", 100, 220, fontInstruct, black)
    Font.Draw ("S = note d sharp octave 2", 100, 205, fontInstruct, black)
    Font.Draw ("D = note e sharp octave 2", 100, 190, fontInstruct, black)
    Font.Draw ("F = note f sharp octave 2", 100, 175, fontInstruct, black)
    Font.Draw ("G = note g sharp octave 2", 100, 160, fontInstruct, black)

    Font.Draw ("To change the note's duration click on the box you wish the note duration to be.", 100, 120, fontInstruct, black)
    GUI.Show (menu)

end Instructions

%Final Closing Screen
procedure goodBye
    title

    %Stops the Music
    Music.PlayFileStop

    GUI.Hide (beginButton)
    GUI.Hide (instruction)
    GUI.Hide (exitButton)

    var closeButton := GUI.CreateButtonFull (570, 100, 150, "Close Program", GUI.Quit, 50, KEY_ESC, true)
    GUI.Show (closeButton)

    var endFont := Font.New ("forte:35")
    Font.Draw ("Thank You for using this Musical Piano-Keyboard Recorder", 55, maxy div 2 + 100, endFont, black)
    var nameFont := Font.New ("forte:20")
    Font.Draw ("By: Anthony Canzona", 530, maxy div 2 - 100, nameFont, black)

end goodBye

%Main Menu Procedrue
body procedure mainMenu
    title

    GUI.Hide (menu)
    GUI.Hide (start)
    GUI.Hide (recorder)

    var menuFont : int

    menuFont := Font.New ("Arial:12")
    Font.Draw ("Enter an option to start exploring the program.", 500, 550, menuFont, black)

    %Menu Button Options
    beginButton := GUI.CreateButtonFull (550, 400, 200, "BEGIN", userInput, 50, KEY_ENTER, true)
    GUI.Show (beginButton)
    instruction := GUI.CreateButtonFull (550, 300, 200, "INSTRUCTIONS", Instructions, 50, 'I', false)
    GUI.Show (instruction)
    exitButton := GUI.CreateButtonFull (550, 200, 200, "QUIT PROGRAM", goodBye, 50, KEY_ESC, false)
    GUI.Show (exitButton)

end mainMenu

%Introduction Display
procedure introduction

    var introTitleFont, introFont : int
    var piano, quarterNote1, quarterNote2 : int

    %Start Game Button
    start := GUI.CreateButtonFull (850, 200, 100, "START GAME", mainMenu, 50, KEY_ENTER, true)
    GUI.Hide (start)

    %Picture ID
    piano := Pic.FileNew ("piano.jpg")

    fork introMusic

    %Starting Animation
    for x : 1 .. 200
	drawfillbox (-550 + x, 450, -50 + x, 100, white)
	Pic.Draw (piano, -50 + x, 100, picMerge)
	delay (10)
    end for
    for x : 1 .. 30
	drawfilloval (525, 400 + x, 15, 10, 16)
	drawfillbox (535, 400 + x, 540, 500 + x, 16)
	delay (50)
	drawfilloval (525, 400 + x, 15, 10, 0)
	drawfillbox (535, 400 + x, 540, 500 + x, 0)
    end for
    delay (50)
    for x : 1 .. 60
	drawfilloval (100, 300 + x, 20, 10, 16)
	drawfillbox (115, 300 + x, 120, 400 + x, 16)
	delay (50)
	drawfilloval (100, 300 + x, 20, 10, 0)
	drawfillbox (115, 300 + x, 120, 400 + x, 0)
    end for

    introFont := Font.New ("Forte:14")
    introTitleFont := Font.New ("Forte:40")

    %Game Discription and Title Text
    Font.Draw ("The Musical Piano-Keyboard Recorder", 80, 600, introTitleFont, black)
    Font.Draw ("This program allows you to turn your personal computer into ", 650, 400, introFont, black)
    Font.Draw ("a fully functioning piano.", 650, 380, introFont, black)
    Font.Draw ("You can compose, play and record your own personal songs.", 650, 340, introFont, black)
    Font.Draw ("Music: 'Piano Man' by Billy Joel ", 900, 20, introFont, black)

    GUI.Show (start)

end introduction

%Main Program
introduction
loop
    exit when GUI.ProcessEvent
end loop
Window.Close (mainWin)
%End Of Progarm
