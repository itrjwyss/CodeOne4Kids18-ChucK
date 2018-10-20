//Defining the Oscillator type
SinOsc wave => dac;

//Defining two variables
//qt for quarter notes time
0.5 => float qt; //quarter
//hw for half notes time
qt*2 => float hw; //half

//Defining our Twinkle array of MIDI notes
[60, 60, 67, 67, 69, 69, 67, 65, 65, 64, 64, 62, 62, 60,
 67, 67, 65, 65, 64, 64, 62, 67, 67, 65, 65, 64, 64, 62,
 60, 60, 67, 67, 69, 69, 67, 65, 65, 64, 64, 62, 62, 60] @=> int notes[];

//Defining an array for save duration of each note
[qt, qt, qt, qt, qt, qt, hw, qt, qt, qt, qt, qt, qt, hw,
 qt, qt, qt, qt, qt, qt, hw, qt, qt, qt, qt, qt, qt, hw,
 qt, qt, qt, qt, qt, qt, hw, qt, qt, qt, qt, qt, qt, 1.5] @=> float duration[];

//Defining a for loop will go through each position of the array.
for(0 => int i; i < notes.cap(); i++){
    //Transforming the MIDI note into frequency
    //Counter i indicates will position we are accessing
    //We are using mtof(midi to frequency) method in Std class
    Std.mtof(notes[i]) => wave.freq;
    
    0.8 => wave.gain;
    //Defining note duration through duration array values
    duration[i]::second => now;
    
    //Adding a short silent to differentiate between each note played
    0.0 => wave.freq;
    0.1::second => now;
}