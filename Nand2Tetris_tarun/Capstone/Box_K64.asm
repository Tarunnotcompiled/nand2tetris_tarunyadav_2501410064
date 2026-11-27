// =================================
// CAPSTONE PROJECT
// Name: Tarun Yadav
// Roll Number: 2501410064
// Personal Number: K = 64
// Box: 16 pixels wide, 20 rows tall
// =================================

(MAIN)

// Check if any key is pressed
@KBD
D=M
@DRAW
D;JGT

// No key pressed: clear the box
@CLEAR
0;JMP

// =================================
// DRAW BLACK BOX
// =================================

(DRAW)

@18432
D=A
@R13
M=D

@20
D=A
@R14
M=D

(DRAW_LOOP)

// Draw one word (16 black pixels)
@R13
A=M
M=-1

// Move to next screen row
@32
D=A
@R13
M=D+M

// Decrease remaining rows
@R14
MD=M-1

@DRAW_LOOP
D;JGT

@MAIN
0;JMP

// =================================
// CLEAR THE BOX
// =================================

(CLEAR)

@18432
D=A
@R13
M=D

@20
D=A
@R14
M=D

(CLEAR_LOOP)

// Clear one word
@R13
A=M
M=0

// Move to next screen row
@32
D=A
@R13
M=D+M

// Decrease remaining rows
@R14
MD=M-1

@CLEAR_LOOP
D;JGT

@MAIN
0;JMP
