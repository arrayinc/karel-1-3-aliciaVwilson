/*
 * File: World-1-3.k
 * ---------------------------
 * Uh oh. We've got MORE potholes. Ewww.
 * Let's automate this process with control statements!
 */

import "turns";

function FillPotholes(){
	repeat(5){
		fillPothole();
	}
}

function fillPothole(){
	move();
	if(rightIsClear()){
		turnRight();
		move();
		if(noBeepersPresent()){
			putBeeper();
		}
		turnAround();
		move();
		turnRight();
		move();
	}
}

function returnToStart(){
	turnAround();
	repeat (10){
		move();
	}
	turnAround();
}