// Letters and messages for test 1

var nBack1Trial = ["J",
    "I","I", "E", "T", "O", "O", "A", "E", "E"
];

var nBack1Full = ["B", "B",
                  "E", "B", "A", "J", "J", "N", "T", "T",
                  "D", "D", "I", "N", "D", "N", "N", "I", "A", "A",
                  "I", "I", "E", "D", "N", "D", "E", "O", "O", "A",
                  "J", "J", "B", "B", "I", "I", "O", "T", "T", "U", 
                  "U", "O", "E", "O", "A", "A", "U", "T", "U", "U",
                  "J", "E", "E", "J", "J", "D", "D", "T", "O", "T",
                  "T", "I", "N", "N", "A", "U", "U", "A", "A", "U",
                  "D", "O", "T", "T", "I", "J", "J", "B", "E", "B",
                  "A", "B", "D", "D", "I", "I", "O", "O", "N", "T", 
                  "D", "D", "B", "E", "N", "N", "T", "U", "U", "J"
];
                  
var test1Message1 = ["You are going to be shown a series of letters. If",
                     "the letter currently being shown is identical to",
                     "the letter shown immediately prior to the current",
                     "letter, press the YES key (Z key).",
                     "If it is not the same, press the",
                     "NO key (?/ key).",
                     "  ",
                     "Press the spacebar to begin."];

var test1Message2 = ["Again you are going to be shown a series of letters.",
                     "If the letter currently being shown is identical to",
                     "the letter shown immediately prior to the current",
                     "letter, press the YES key (Z key). If",
                     "it is not the same, to press the NO key",
                     "(?/ key).",
                     "  ",
                     "Press the spaceBar to begin."];
                             
var rectangleTest1Message = [250, 250, 510, 200]; //left, top, width, height
                    
// Letters and messages for test 2

var nBack2Trial = ["E",
    "D",
    "J", "D", "U", "O", "U", "U", "U", "A"
];

var nBack2Full = ["O",
                  "B", "O", "J", "E", "J", "O", "J", "A", "T",
                  "E", "A", "J", "D", "J", "N", "T", "N", "U", "D",
                  "D", "B", "N", "J", "N", "O", "N", "D", "N", "U",
                  "N", "D", "B", "D", "I", "E", "D", "J", "D", "U", 
                  "O", "U", "U", "U", "I", "J", "I", "T", "J", "T",
                  "N", "J", "E", "D", "D", "D", "E", "D", "B", "N",
                  "U", "J", "B", "J", "O", "T", "D", "T", "F", "T",
                  "J", "T", "T", "B", "T", "E", "O", "E", "A", "I",
                  "I", "E", "I", "B", "A", "B", "O", "N", "O", "A", 
                  "O", "D", "I", "D", "D", "D", "A", "E", "A", "I"
];

var test2Message1 = ["You are going to be shown a series of letters. If",
                     "the letter currently being shown is identical to",
                     "the letter shown two move prior to the current",
                     "letter, press the YES key (Z key).",
                     "If it is not the same, press the",
                     "NO key (?/ key).",
                     "  ",
                     "Press the spacebar to begin."]

var test2Message2 = ["Again you are going to be shown a series of letters.",
                     "If the letter currently being shown is identical to",
                     "the letter shown two moves prior to the current",
                     "letter, press the YES key (Z key). If",
                     "it is not the same, press the NO key",
                     "(?/ key).",
                     "  ",
                     "Press the spaceBar to begin."];

var rectangleTest2Message = [250, 250, 510, 200]; //left, top, width, height

// Letters and messages for test 3

var nBack3Trial = ["I",
    "B", "E", "A", "T", "E", "A", "U", "O", "D"
];

var nBack3Full = ["B",
                  "A","I", "B", "E", "J", "B", "E", "N", "D",
                  "U", "N", "U", "O", "J", "U", "B", "D", "T", "T",
                  "D", "U", "U", "D", "O", "T", "O", "O", "T", "T",
                  "E", "N", "T", "I", "J", "T", "O", "J", "A", "O", 
                  "D", "N", "J", "D", "A", "E", "A", "O", "N", "J",
                  "O", "T", "D", "E", "O", "D", "T", "O", "D", "E",
                  "J", "I", "B", "J", "I", "J", "D", "B", "I", "D",
                  "O", "I", "E", "N", "D", "E", "U", "I", "B", "U",
                  "A", "E", "U", "U", "A", "T", "A", "N", "O", "A", 
                  "N", "D", "U", "J", "B", "U", "O", "D", "U", "O"
];

var test3Message1 = ["You are going to be shown a series of letters. If",
                     "the letter currently being shown is identical to",
                     "the letter shown three moves prior to the current",
                     "letter, press the YES key (Z key).",
                     "If it is not the same, press the",
                     "NO key (?/ key).",
                     "  ",
                     "Press the spacebar to begin."]

var test3Message2 = ["Again you are going to be shown a series of letters.",
                     "If the letter currently being shown is identical to",
                     "the letter shown three moves prior to the current",
                     "letter, press the YES key (Z key). If",
                     "it is not the same, press the NO key",
                     "(?/ key).",
                     "  ",
                     "Press the spaceBar to begin."];

var rectangleTest3Message = [250, 250, 510, 200]; //left, top, width, height

// Result

var rectangleResultMessage = [200, 150, 610, 400];

// Pooled Arrays

var nBackTrial = [nBack1Trial, nBack2Trial, nBack3Trial];
var nBackFull = [nBack1Full, nBack2Full, nBack3Full];
var testMessage1 = [test1Message1, test2Message1, test3Message1];
var testMessage2 = [test1Message2, test2Message2, test3Message2];
var rectangleTestMessage = [rectangleTest1Message, rectangleTest2Message, rectangleTest3Message];