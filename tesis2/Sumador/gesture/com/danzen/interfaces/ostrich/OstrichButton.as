
package com.danzen.interfaces.ostrich {

	// OSTRICH INTRODUCTION  
	// Ostrich lets you follow video motion with a cursor
	// for instance, you can wave at a Webcam and make a cursor move to where you wave
	// this can be used as an interface to control elements of your application
	
	// FEATURES AND CONSIDERATIONS
	// you can specify a region in which to look for motion
	// you can specify multiple cursors - each with their own region
	// the OstrichButton class is provided to trigger over, out and hold events (no click)
	// the fastest way to find out if a button is activated is to make it a cursor region
	// then use the cursor start and stop to catch activity in that region
	// you can make your own clips follow the OstrichCursor
	
	// **** people on macs may need to adjust their active camera setting in Flash

	// WORKINGS
	// OstrichCursor is optimized for a single person standing in the middle using hands
	// a rectangle is put around all motion and then a cursor is positioned as follows:
	// the y position of the cursor is set to ten pixels beneath the top of the motion rectangle
	// if rectangle is at the left of the camera it takes the left edge of rectangle for cursor x position
	// if rectangle is at right it takes the right edge of rectangle for cursor x position
	// if rectangle is in the center it takes the center of the rectangle for cursor x position
	// if rectangle is anywhere else it uses the proportion to figure cursor x location
	// you can adjust this by reworking the class
	
	// http://ostrichflash.wordpress.com - by inventor Dan Zen - http://www.danzen.com
	// if you are using Ostrich for commercial purposes, you are welcome to donate to Dan Zen
	// donations can be made to agency@danzen.com at http://www.paypal.com
	// also be aware that Gesture Tek and perhaps others hold patents in these areas

	// INSTALLING CLASSES  
	// suggested installation:
	// create a "classes" folder on your hard drive - for example c:\classes
	// add the classes folder to your Flash class path:
	// Flash menu choose Edit > Preferences > ActionScript - ActionScript 3 Settings 
	// then use the + sign for the source path box to add the path to your classes folder
	// put the provided com/danzen/ directory with its folders and files in the classes folder
	// the readme has more information if you need it

	// USING OSTRICH  
	// please make sure that the following director is in a folder in your class path:
	// com/danzen/interfaces/ostrich/
	// see the samples for how to use the Ostrich classes
	
	// OstrichCamera - sets up a Web cam for capturing motion
	// OstrichCursor - sets up a cursor that follows the motion in OstrichCamera
	// OstrichButton - sets up events for an invisible hotspot per OstrichCursor
	// OstrichBlobs - puts blobs on any motion	
	
	// ******************
	// This class should only be called after an OstrichCamera.READY event fires	

	import flash.display.*
	import flash.utils.Timer;
	import flash.events.*

	public class OstrichButton extends Sprite {
		
		// CONSTRUCTOR  
		// OstrichCursor(theCursor:OstrichCursor, theButton:Object, theHoldDuration:Number=2):void
		// 		OstrichButton takes in an OstrichCursor and some premade "button" DisplayObject
		// 		It then checks to see if the cursor moves over or out of the button
		// 		and also if the user holds on the button for the time given by the third constructor parameter
		//		
		// 		PARAMETERS:
		// 		theCursor:OstrichCursor - the OstrichCursor object we are using
		// 		theButton:Object - a Sprite or MovieClip - the class just uses location and size
		// 		theHoldDuration:Number - seconds on button before a hold is triggered (default 2)

		// EVENTS 
		// OstrichButton.MOTION_OVER 	the cursor has moved over the button 
		// OstrichButton.MOTION_OUT 	the cursor has moved out from the button 
		// OstrichButton.MOTION_HOLD 	the cursor has stayed on the button for the specified myHoldTime
		
		// METHODS (in addition to constructor)
		// dispose():void - removes OstrichButton object - not your original button

		// PROPERTIES  
		// buttonNum:Number - read only - the button num starting at 0 
		// button:Object - reference to the "button" passed in to the OstrichButton object
		// cursor:OstrichCursor - the OstrichCursor passed in to the OstrichButton object
		
		// CONSTANTS  
		// MOTION_START:String - static constant (OstrichCursor.MOTION_START) for motion start event
		// MOTION_STOP:String - static constant (OstrichCursor.MOTION_STOP) for motion stop event
		
		
		public static const MOTION_OVER:String = "MotionOver";
		public static const MOTION_OUT:String = "MotionOut";		
		public static const MOTION_HOLD:String = "MotionHold";
		
		// static constants and related
		private static var buttonTotal:Number = 0; // keeps track of button numbers starting at 0
		private var myButtonNum:Number; // used with getter method at botton of class to return buttonNum
				
		// general holder and check variables
		private var myCursor:OstrichCursor;
		private var myButton:Object;	
		private var myHoldDuration:Number;
		private var motionOnButton:Object;
		private var motionOnButtonHold:Object;
		private var clearCheck:Boolean;
		private var clearCheckHold:Boolean = true;
		private var timerButton:Timer;
		private var timerHold:Timer;
		
		public function OstrichButton(theCursor:OstrichCursor, theButton:Object, theHoldDuration:Number=2) {
						
			if (buttonTotal == 0) {trace ("hi from OstrichButton");}						
						
			myButtonNum = buttonTotal++; // which means cursorNum starts at 0
	
			myCursor = theCursor;	
			myButton = theButton;
			myHoldDuration = theHoldDuration;
			
			timerButton = new Timer(500);
			timerButton.start();
			
			motionOver();
			motionOut();
			motionHold();
			
		}		
		
		// --------------  Over function ----------------------------
		
		private function motionOver() {		
			timerButton.addEventListener(TimerEvent.TIMER, overFunction);
			clearCheck = true;	
		}
		private function overFunction(e:Event) {
			if (myCursor.hitTestObject(DisplayObject(myButton))) {			
				if (clearCheck) {
					dispatchEvent(new Event(OstrichButton.MOTION_OVER, true));
					motionOnButton = myButton;
					clearCheck = false;
				} 		
			} else {
				clearCheck = true;
			}
		}		
		
		// --------------  Out function ----------------------------
		
		private function motionOut() {
			timerButton.addEventListener(TimerEvent.TIMER, outFunction);
			clearCheck = true;	
		}
		private function outFunction(e:Event) {
			if (!myCursor.hitTestObject(DisplayObject(myButton))) {
				if (motionOnButton == myButton) {
					dispatchEvent(new Event(OstrichButton.MOTION_OUT, true));
					motionOnButton = null;
				} 		
			} 
		}		
		
		// --------------  Hold function ---------------------------- 
		
		private function motionHold() {
			timerButton.addEventListener(TimerEvent.TIMER, holdFunction);
			clearCheck = true;				
		}
		private function holdFunction(e:Event) {
			if (myCursor.hitTestObject(DisplayObject(myButton))) {
				if (clearCheckHold) {					
					timerHold = new Timer(myHoldDuration*1000,1);
					timerHold.addEventListener(TimerEvent.TIMER, holdTime);
					timerHold.start();	
					motionOnButtonHold = myButton;
					clearCheckHold = false;
				} 		
			} else {
				clearCheckHold = true;
				if (motionOnButtonHold == myButton) {
					timerHold.stop();
					motionOnButtonHold = null;
				} 				
			}
		}		
		private function holdTime(e:Event) {
			motionOnButtonHold = null;
			dispatchEvent(new Event(OstrichButton.MOTION_HOLD, true));
		}			
		
		// these getter setter methods prevent the buttonNum from being set
		public function get buttonNum() {return myButtonNum;}
		public function set buttonNum(t) {trace ("buttonNum is read only");}
		
		public function get buttonNum2() {return myButtonNum;}
		public function set buttonNum2(t) {trace ("buttonNum2 is read only");}
		
		
		public function get buttonNum3() {return myButtonNum;}
		public function set buttonNum3(t) {trace ("buttonNum2 is read only");}
		
		public function get buttonNum4() {return myButtonNum;}
		public function set buttonNum4(t) {trace ("buttonNum2 is read only");}
		
		public function get buttonNum5() {return myButtonNum;}
		public function set buttonNum5(t) {trace ("buttonNum2 is read only");}
		
		public function get buttonNum6() {return myButtonNum;}
		public function set buttonNum6(t) {trace ("buttonNum2 is read only");}
		
		// these getter setter methods prevent the cursor from being set
		public function get cursor() {return myCursor;}
		public function set cursor(t) {trace ("cursor is read only");}		
		
		// these getter setter methods prevent the button from being set
		public function get button() {return myButton;}
		public function set button(t) {trace ("button is read only");}				
		
		public function get button2() {return myButton;}
		public function set button2(t) {trace ("button is read only");}				
		
		public function get button3() {return myButton;}
		public function set button3(t) {trace ("button is read only");}				
		
		public function get button4() {return myButton;}
		public function set button4(t) {trace ("button is read only");}		
		
		public function get button5() {return myButton;}
		public function set button5(t) {trace ("button is read only");}		
		
		public function get button6() {return myButton;}
		public function set button6(t) {trace ("button is read only");}		
		
		
		
		public function get button7() {return myButton;}
		public function set button7(t) {trace ("button is read only");}				
		
		public function get button8() {return myButton;}
		public function set button8(t) {trace ("button is read only");}				
		
		public function get button9() {return myButton;}
		public function set button9(t) {trace ("button is read only");}		
		
		public function get button10() {return myButton;}
		public function set button10(t) {trace ("button is read only");}		
		
		
		
		public function get button11() {return myButton;}
		public function set button11(t) {trace ("button is read only");}		
		
		
		public function get button12() {return myButton;}
		public function set button12(t) {trace ("button is read only");}	
		
		public function get button13() {return myButton;}
		public function set button13(t) {trace ("button is read only");}	
		
		public function get button14() {return myButton;}
		public function set button14(t) {trace ("button is read only");}
		
		public function get button15() {return myButton;}
		public function set button15(t) {trace ("button is read only");}
		
		public function get button16() {return myButton;}
		public function set button16(t) {trace ("button is read only");}
		
		public function get button17() {return myButton;}
		public function set button17(t) {trace ("button is read only");}
		
		public function get button18() {return myButton;}
		public function set button18(t) {trace ("button is read only");}
		
		public function get button19() {return myButton;}
		public function set button19(t) {trace ("button is read only");}
		
		
		
		public function get button20() {return myButton;}
		public function set button20(t) {trace ("button is read only");}
		
				
		
		public function get button21() {return myButton;}
		public function set button21(t) {trace ("button is read only");}
		
				
		
		public function get button22() {return myButton;}
		public function set button22(t) {trace ("button is read only");}
		
		public function get button23() {return myButton;}
		public function set button23(t) {trace ("button is read only");}
		
		public function get button24() {return myButton;}
		public function set button24(t) {trace ("button is read only");}
		
		public function get button25() {return myButton;}
		public function set button25(t) {trace ("button is read only");}
		
		public function get button26() {return myButton;}
		public function set button26(t) {trace ("button is read only");}
		
		public function get button27() {return myButton;}
		public function set button27(t) {trace ("button is read only");}
		
		public function get button28() {return myButton;}
		public function set button28(t) {trace ("button is read only");}
		
		public function get button29() {return myButton;}
		public function set button29(t) {trace ("button is read only");}
		
		public function get button30() {return myButton;}
		public function set button30(t) {trace ("button is read only");}
		
		public function get button31() {return myButton;}
		public function set button31(t) {trace ("button is read only");}
		
		public function get button32() {return myButton;}
		public function set button32(t) {trace ("button is read only");}
		
		public function get button33() {return myButton;}
		public function set button33(t) {trace ("button is read only");}
		
		public function get button34() {return myButton;}
		public function set button34(t) {trace ("button is read only");}
		
		public function get button35() {return myButton;}
		public function set button35(t) {trace ("button is read only");}
		
		public function get button36() {return myButton;}
		public function set button36(t) {trace ("button is read only");}
		
		public function get button37() {return myButton;}
		public function set button37(t) {trace ("button is read only");}
		
		public function get button38() {return myButton;}
		public function set button38(t) {trace ("button is read only");}
		
		public function get button39() {return myButton;}
		public function set button39(t) {trace ("button is read only");}
		
		public function get button40() {return myButton;}
		public function set button40(t) {trace ("button is read only");}
		
		public function get button41() {return myButton;}
		public function set button41(t) {trace ("button is read only");}
		
		public function get button42() {return myButton;}
		public function set button42(t) {trace ("button is read only");}
		
		public function get button43() {return myButton;}
		public function set button43(t) {trace ("button is read only");}
		
		public function get button44() {return myButton;}
		public function set button44(t) {trace ("button is read only");}
		
		
		
		public function dispose() {
			if (timerButton) {timerButton.stop();}
			if (timerHold) {timerHold.stop();}
		}	
		
		
	}
	
}