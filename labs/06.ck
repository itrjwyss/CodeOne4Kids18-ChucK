//Defining the Oscillator type
SinOsc wave => dac;

//Defining our Twinkle array of MIDI notes
[60, 60, 67, 67, 69, 69, 67, 65, 65, 64, 64, 62, 62, 60,
 67, 67, 65, 65, 64, 64, 62, 67, 67, 65, 65, 64, 64, 62,
 60, 60, 67, 67, 69, 69, 67, 65, 65, 64, 64, 62, 62, 60] @=> int notes[];

//Defining a for loop will go through each position of the array.
for(0 => int i; i < notes.cap(); i++){
    //Transforming the MIDI note into frequency
    //Counter i indicates will position we are accessing
    //We are using mtof(midi to frequency) method in Std class
    Std.mtof(notes[i]) => wave.freq;
    
    0.8 => wave.gain;
    0.5::second => now;
}