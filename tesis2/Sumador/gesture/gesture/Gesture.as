
package gesture {
	
	import flash.display.Sprite;
	import flash.display.DisplayObject;
	import flash.events.*;
	import com.danzen.interfaces.ostrich.*;
	
	import flash.display.MovieClip;
    import flash.text.TextField;
	import flash.text.*;
    import flash.events.MouseEvent;
	
	
	public class Gesture extends Sprite {
		
		private var myCamera:OstrichCamera;
		private var myCursor:OstrichCursor;		
		private var myButton:OstrichButton;
		private var myButton2:OstrichButton;
		private var myButton3:OstrichButton;
		private var myButton4:OstrichButton;
		private var myButton5:OstrichButton;
		private var myButton6:OstrichButton;
		private var myButton7:OstrichButton;
		private var myButton8:OstrichButton;
		private var myButton9:OstrichButton;
		private var myButton10:OstrichButton;
		private var myButton11:OstrichButton;
		private var myButton12:OstrichButton;
		private var myButton13:OstrichButton;
		private var myButton14:OstrichButton;
		private var myButton15:OstrichButton;
		private var myButton16:OstrichButton;
		private var myButton17:OstrichButton;
		private var myButton18:OstrichButton;
		private var myButton19:OstrichButton;
		private var myButton20:OstrichButton;
		private var myButton21:OstrichButton;
		private var myButton22:OstrichButton;
		private var myButton23:OstrichButton;
		
		private var myButton24:OstrichButton;
		private var myButton25:OstrichButton;
		private var myButton26:OstrichButton;
		private var myButton27:OstrichButton;
		private var myButton28:OstrichButton;
		private var myButton29:OstrichButton;
		private var myButton30:OstrichButton;
		private var myButton31:OstrichButton;
		private var myButton32:OstrichButton;
		private var myButton33:OstrichButton;
		private var myButton34:OstrichButton;
		private var myButton35:OstrichButton;
		
		private var myButton36:OstrichButton;
		private var myButton37:OstrichButton;
		private var myButton38:OstrichButton;
		private var myButton39:OstrichButton;
		private var myButton40:OstrichButton;
		private var myButton41:OstrichButton;
		private var myButton42:OstrichButton;
		private var myButton43:OstrichButton;
		private var myButton44:OstrichButton;
		
		
		
		
		private var ball:Sprite;	
		private var ball2:Sprite;	
		private var button:Sprite;
		private var button2:Sprite;
		private var button3:Sprite;
		private var button4:Sprite;
		private var button5:Sprite;
		private var button6:Sprite;
		private var button7:Sprite;
		private var button8:Sprite;
		private var button9:Sprite;
		private var button10:Sprite;
		private var button11:Sprite;
		private var button12:Sprite;
		private var button13:Sprite;
		private var button14:Sprite;
		private var button15:Sprite;
		private var button16:Sprite;
		private var button17:Sprite;
		private var button18:Sprite;
		private var button19:Sprite;
		private var button20:Sprite;
		private var button21:Sprite;
		private var button22:Sprite;
		private var button23:Sprite;
		
		private var button24:Sprite;
		private var button25:Sprite;
		private var button26:Sprite;
		private var button27:Sprite;
		private var button28:Sprite;
		private var button29:Sprite;
		private var button30:Sprite;
		private var button31:Sprite;
		private var button32:Sprite;
		private var button33:Sprite;
		private var button34:Sprite;
		private var button35:Sprite;
		
		private var button36:Sprite;
		private var button37:Sprite;
		private var button38:Sprite;
		private var button39:Sprite;
		private var button40:Sprite;
		private var button41:Sprite;
		private var button42:Sprite;
		private var button43:Sprite;
		private var button44:Sprite;
		
var formato:TextFormat=new TextFormat();



		
		
		var texto:TextField = new TextField();
		
		var texto2:TextField = new TextField();
		
		var texto3:TextField = new TextField();
		
		var texto4:TextField = new TextField();
		
		
		// var contador:Number;
		
		
		
		public function Gesture() {			
			
			trace ("hi from SampleButton");
			
			// make an OstrichCamera object			
			myCamera = new OstrichCamera(0,0,970,680);	
			//myCamera.alpha = .0;
			addChild(myCamera);		
			myCamera.addEventListener(OstrichCamera.READY, init);
			moveToTop(prendas2);
			moveToTop2(s);
			
		 // contador = _root.prendas2.currentFrame;
		}
		
		private function init(e:Event) {				
		
			trace ("camera ready " + e.target.camNum);
			
			// make an OstrichCursor object (there are more parameters available)
			myCursor = new OstrichCursor(myCamera); 
			myCursor.addEventListener(OstrichCursor.MOTION_START, onStart);
			myCursor.addEventListener(OstrichCursor.MOTION_STOP, onStop);
			addChild(myCursor); 
			
			// make a sprite to act as a button - could just be a clip on the stage
			button = new Sprite();			
			button.graphics.beginFill(0xFFFFFFF, 0.1);
			button.graphics.drawCircle(200,300,70);
			//button.graphics.drawRoundRect(200,200,100,100,16);
			button.graphics.endFill();		
			//button.alpha = .1;
			button.x=670;
		    addChild(button);	
			
			
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton = new OstrichButton(myCursor, button); 
			myButton.addEventListener(OstrichButton.MOTION_OVER, onOver);
			myButton.addEventListener(OstrichButton.MOTION_OUT, onOut);
			myButton.addEventListener(OstrichButton.MOTION_HOLD, onHold);
			
			// make a sprite to follow the OstrichCursor and hide the cursor
			ball = new Sprite();			
			ball.graphics.beginFill(0xFFFFFF);
			ball.graphics.drawCircle(0,10,14);
			ball.graphics.endFill();		
			ball.alpha=.9;
			addEventListener(Event.ENTER_FRAME, animate);	
			addChild(ball);				
			removeChild(myCursor);			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button2 = new Sprite();			
			button2.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button2.graphics.drawCircle(260,300,70);
			button2.graphics.endFill();		
			//button.alpha = .1;
			button2.x=-160;
		    addChild(button2);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton2 = new OstrichButton(myCursor, button2); 
			myButton2.addEventListener(OstrichButton.MOTION_OVER, onOver2);
			myButton2.addEventListener(OstrichButton.MOTION_OUT, onOut2);
			myButton2.addEventListener(OstrichButton.MOTION_HOLD, onHold2);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button3 = new Sprite();			
			button3.graphics.beginFill(0x2E64FE, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button3.graphics.drawCircle(260,300,50);
			button3.graphics.endFill();		
			button3.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton3 = new OstrichButton(myCursor, button3); 
			myButton3.addEventListener(OstrichButton.MOTION_OVER, onOver3);
			myButton3.addEventListener(OstrichButton.MOTION_OUT, onOut3);
			myButton3.addEventListener(OstrichButton.MOTION_HOLD, onHold3);
			
			
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button4 = new Sprite();			
			button4.graphics.beginFill(0x04B431, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button4.graphics.drawCircle(260,300,50);
			button4.graphics.endFill();		
			button4.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton4 = new OstrichButton(myCursor, button4); 
			myButton4.addEventListener(OstrichButton.MOTION_OVER, onOver4);
			myButton4.addEventListener(OstrichButton.MOTION_OUT, onOut4);
			myButton4.addEventListener(OstrichButton.MOTION_HOLD, onHold4);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button5 = new Sprite();			
			button5.graphics.beginFill(0xDF7401, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button5.graphics.drawCircle(260,300,50);
			button5.graphics.endFill();	
			button5.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton5 = new OstrichButton(myCursor, button5); 
			myButton5.addEventListener(OstrichButton.MOTION_OVER, onOver5);
			myButton5.addEventListener(OstrichButton.MOTION_OUT, onOut5);
			myButton5.addEventListener(OstrichButton.MOTION_HOLD, onHold5);
			
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button6 = new Sprite();			
			button6.graphics.beginFill(0x04B431, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button6.graphics.drawCircle(260,300,50);
			button6.graphics.endFill();	
			button6.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton6 = new OstrichButton(myCursor, button6); 
			myButton6.addEventListener(OstrichButton.MOTION_OVER, onOver6);
			myButton6.addEventListener(OstrichButton.MOTION_OUT, onOut6);
			myButton6.addEventListener(OstrichButton.MOTION_HOLD, onHold6);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage   AMARILLO
			button7 = new Sprite();			
			button7.graphics.beginFill(0xFFFF00, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button7.graphics.drawCircle(260,300,50);
			button7.graphics.endFill();		
			button7.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton7 = new OstrichButton(myCursor, button7); 
			myButton7.addEventListener(OstrichButton.MOTION_OVER, onOver7);
			myButton7.addEventListener(OstrichButton.MOTION_OUT, onOut7);
			myButton7.addEventListener(OstrichButton.MOTION_HOLD, onHold7);
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage     ROJO
			button8 = new Sprite();			
			button8.graphics.beginFill(0xDF0101, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button8.graphics.drawCircle(260,300,50);
			button8.graphics.endFill();		
			button8.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)   
			myButton8 = new OstrichButton(myCursor, button8); 
			myButton8.addEventListener(OstrichButton.MOTION_OVER, onOver8);
			myButton8.addEventListener(OstrichButton.MOTION_OUT, onOut8);
			myButton8.addEventListener(OstrichButton.MOTION_HOLD, onHold8);
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage     VERDE
			button9 = new Sprite();			
			button9.graphics.beginFill(0x01DF01, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button9.graphics.drawCircle(260,300,50);
			button9.graphics.endFill();		
			button9.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)    
			myButton9 = new OstrichButton(myCursor, button9); 
			myButton9.addEventListener(OstrichButton.MOTION_OVER, onOver9);
			myButton9.addEventListener(OstrichButton.MOTION_OUT, onOut9);
			myButton9.addEventListener(OstrichButton.MOTION_HOLD, onHold9);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the     AZUL
			button10 = new Sprite();			
			button10.graphics.beginFill(0x013ADF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button10.graphics.drawCircle(260,300,50);
			button10.graphics.endFill();		
			button10.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton10 = new OstrichButton(myCursor, button10); 
			myButton10.addEventListener(OstrichButton.MOTION_OVER, onOver10);
			myButton10.addEventListener(OstrichButton.MOTION_OUT, onOut10);
			myButton10.addEventListener(OstrichButton.MOTION_HOLD, onHold10);
			
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button11 = new Sprite();			
			button11.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			//button11.graphics.drawCircle(260,300,70);
			button11.graphics.drawRect(260,300,200,50);
			button11.graphics.endFill();		
			//button.alpha = .1;
			button11.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton11 = new OstrichButton(myCursor, button11); 
			myButton11.addEventListener(OstrichButton.MOTION_OVER, onOver11);
			myButton11.addEventListener(OstrichButton.MOTION_OUT, onOut11);
			myButton11.addEventListener(OstrichButton.MOTION_HOLD, onHold11);
			
			
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button12 = new Sprite();			
			button12.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			//button11.graphics.drawCircle(260,300,70);
			button12.graphics.drawRect(260,300,200,50);
			button12.graphics.endFill();		
			//button.alpha = .1;
			button12.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton12 = new OstrichButton(myCursor, button12); 
			myButton12.addEventListener(OstrichButton.MOTION_OVER, onOver12);
			myButton12.addEventListener(OstrichButton.MOTION_OUT, onOut12);
			myButton12.addEventListener(OstrichButton.MOTION_HOLD, onHold12);
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button13 = new Sprite();			
			button13.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			//button11.graphics.drawCircle(260,300,70);
			button13.graphics.drawRect(260,300,200,50);
			button13.graphics.endFill();		
			//button.alpha = .1;
			button13.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton13 = new OstrichButton(myCursor, button13); 
			myButton13.addEventListener(OstrichButton.MOTION_OVER, onOver13);
			myButton13.addEventListener(OstrichButton.MOTION_OUT, onOut13);
			myButton13.addEventListener(OstrichButton.MOTION_HOLD, onHold13);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button14 = new Sprite();			
			button14.graphics.beginFill(0xDF7401, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button14.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button14.graphics.endFill();		
			//button.alpha = .1;
			button14.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton14 = new OstrichButton(myCursor, button14); 
			myButton14.addEventListener(OstrichButton.MOTION_OVER, onOver14);
			myButton14.addEventListener(OstrichButton.MOTION_OUT, onOut14);
			myButton14.addEventListener(OstrichButton.MOTION_HOLD, onHold14);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button15 = new Sprite();			
			button15.graphics.beginFill(0xFA58F4, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button15.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button15.graphics.endFill();		
			//button.alpha = .1;
			button15.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton15 = new OstrichButton(myCursor, button15); 
			myButton15.addEventListener(OstrichButton.MOTION_OVER, onOver15);
			myButton15.addEventListener(OstrichButton.MOTION_OUT, onOut15);
			myButton15.addEventListener(OstrichButton.MOTION_HOLD, onHold15);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button16 = new Sprite();			
			button16.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			//button11.graphics.drawCircle(260,300,70);
			button16.graphics.drawRect(260,300,200,50);
			button16.graphics.endFill();		
			//button.alpha = .1;
			button16.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton16 = new OstrichButton(myCursor, button16); 
			myButton16.addEventListener(OstrichButton.MOTION_OVER, onOver16);
			myButton16.addEventListener(OstrichButton.MOTION_OUT, onOut16);
			myButton16.addEventListener(OstrichButton.MOTION_HOLD, onHold16);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button17 = new Sprite();			
			button17.graphics.beginFill(0x2EFEC8, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button17.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button17.graphics.endFill();		
			//button.alpha = .1;
			button17.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton17 = new OstrichButton(myCursor, button17); 
			myButton17.addEventListener(OstrichButton.MOTION_OVER, onOver17);
			myButton17.addEventListener(OstrichButton.MOTION_OUT, onOut17);
			myButton17.addEventListener(OstrichButton.MOTION_HOLD, onHold17);
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button18 = new Sprite();			
			button18.graphics.beginFill(0xFFFF00, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button18.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button18.graphics.endFill();		
			//button.alpha = .1;
			button18.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton18 = new OstrichButton(myCursor, button18); 
			myButton18.addEventListener(OstrichButton.MOTION_OVER, onOver18);
			myButton18.addEventListener(OstrichButton.MOTION_OUT, onOut18);
			myButton18.addEventListener(OstrichButton.MOTION_HOLD, onHold18);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button19 = new Sprite();			
			button19.graphics.beginFill(0xFE2E2E, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button19.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button19.graphics.endFill();		
			//button.alpha = .1;
			button19.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton19 = new OstrichButton(myCursor, button19); 
			myButton19.addEventListener(OstrichButton.MOTION_OVER, onOver19);
			myButton19.addEventListener(OstrichButton.MOTION_OUT, onOut19);
			myButton19.addEventListener(OstrichButton.MOTION_HOLD, onHold19);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button20 = new Sprite();			
			button20.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			//button11.graphics.drawCircle(260,300,70);
			button20.graphics.drawRect(260,300,200,50);
			button20.graphics.endFill();		
			//button.alpha = .1;
			button20.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton20 = new OstrichButton(myCursor, button20); 
			myButton20.addEventListener(OstrichButton.MOTION_OVER, onOver20);
			myButton20.addEventListener(OstrichButton.MOTION_OUT, onOut20);
			myButton20.addEventListener(OstrichButton.MOTION_HOLD, onHold20);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button21 = new Sprite();			
			button21.graphics.beginFill(0x2E2EFE, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button21.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button21.graphics.endFill();		
			//button.alpha = .1;
			button21.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton21 = new OstrichButton(myCursor, button21); 
			myButton21.addEventListener(OstrichButton.MOTION_OVER, onOver21);
			myButton21.addEventListener(OstrichButton.MOTION_OUT, onOut21);
			myButton21.addEventListener(OstrichButton.MOTION_HOLD, onHold21);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button22 = new Sprite();			
			button22.graphics.beginFill(0x04B404, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button22.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button22.graphics.endFill();		
			//button.alpha = .1;
			button22.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton22 = new OstrichButton(myCursor, button22); 
			myButton22.addEventListener(OstrichButton.MOTION_OVER, onOver22);
			myButton22.addEventListener(OstrichButton.MOTION_OUT, onOut22);
			myButton22.addEventListener(OstrichButton.MOTION_HOLD, onHold22);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button23 = new Sprite();			
			button23.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			//button11.graphics.drawCircle(260,300,70);
			button23.graphics.drawRect(260,300,200,50);
			button23.graphics.endFill();		
			//button.alpha = .1;
			button23.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton23 = new OstrichButton(myCursor, button23); 
			myButton23.addEventListener(OstrichButton.MOTION_OVER, onOver23);
			myButton23.addEventListener(OstrichButton.MOTION_OUT, onOut23);
			myButton23.addEventListener(OstrichButton.MOTION_HOLD, onHold23);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button24 = new Sprite();			
			button24.graphics.beginFill(0x2E64FE, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button24.graphics.drawCircle(260,300,50);
			button24.graphics.endFill();		
			button24.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton24 = new OstrichButton(myCursor, button24); 
			myButton24.addEventListener(OstrichButton.MOTION_OVER, onOver24);
			myButton24.addEventListener(OstrichButton.MOTION_OUT, onOut24);
			myButton24.addEventListener(OstrichButton.MOTION_HOLD, onHold24);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button25 = new Sprite();			
			button25.graphics.beginFill(0x04B431, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button25.graphics.drawCircle(260,300,50);
			button25.graphics.endFill();		
			button25.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton25 = new OstrichButton(myCursor, button25); 
			myButton25.addEventListener(OstrichButton.MOTION_OVER, onOver25);
			myButton25.addEventListener(OstrichButton.MOTION_OUT, onOut25);
			myButton25.addEventListener(OstrichButton.MOTION_HOLD, onHold25);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button26 = new Sprite();			
			button26.graphics.beginFill(0xDF7401, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button26.graphics.drawCircle(260,300,50);
			button26.graphics.endFill();	
			button26.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton26 = new OstrichButton(myCursor, button26); 
			myButton26.addEventListener(OstrichButton.MOTION_OVER, onOver26);
			myButton26.addEventListener(OstrichButton.MOTION_OUT, onOut26);
			myButton26.addEventListener(OstrichButton.MOTION_HOLD, onHold26);
			
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button27 = new Sprite();			
			button27.graphics.beginFill(0x04B431, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button27.graphics.drawCircle(260,300,50);
			button27.graphics.endFill();	
			button27.x=3060;
			//button.alpha = .1;
			
		    //addChild(button3);	
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton27 = new OstrichButton(myCursor, button27); 
			myButton27.addEventListener(OstrichButton.MOTION_OVER, onOver27);
			myButton27.addEventListener(OstrichButton.MOTION_OUT, onOut27);
			myButton27.addEventListener(OstrichButton.MOTION_HOLD, onHold27);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button28 = new Sprite();			
			button28.graphics.beginFill(0xDF7401, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button28.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button28.graphics.endFill();		
			//button.alpha = .1;
			button28.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton28 = new OstrichButton(myCursor, button28); 
			myButton28.addEventListener(OstrichButton.MOTION_OVER, onOver28);
			myButton28.addEventListener(OstrichButton.MOTION_OUT, onOut28);
			myButton28.addEventListener(OstrichButton.MOTION_HOLD, onHold28);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button29 = new Sprite();			
			button29.graphics.beginFill(0xFA58F4, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button29.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button29.graphics.endFill();		
			//button.alpha = .1;
			button29.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton29 = new OstrichButton(myCursor, button29); 
			myButton29.addEventListener(OstrichButton.MOTION_OVER, onOver29);
			myButton29.addEventListener(OstrichButton.MOTION_OUT, onOut29);
			myButton29.addEventListener(OstrichButton.MOTION_HOLD, onHold29);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button30 = new Sprite();			
			button30.graphics.beginFill(0x2EFEC8, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button30.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button30.graphics.endFill();		
			//button.alpha = .1;
			button30.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton30 = new OstrichButton(myCursor, button30); 
			myButton30.addEventListener(OstrichButton.MOTION_OVER, onOver30);
			myButton30.addEventListener(OstrichButton.MOTION_OUT, onOut30);
			myButton30.addEventListener(OstrichButton.MOTION_HOLD, onHold30);
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button31 = new Sprite();			
			button31.graphics.beginFill(0xFFFF00, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button31.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button31.graphics.endFill();		
			//button.alpha = .1;
			button31.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton31 = new OstrichButton(myCursor, button31); 
			myButton31.addEventListener(OstrichButton.MOTION_OVER, onOver31);
			myButton31.addEventListener(OstrichButton.MOTION_OUT, onOut31);
			myButton31.addEventListener(OstrichButton.MOTION_HOLD, onHold31);
			
			
			
						// make a sprite to act as a button - could just be a clip on the stage
			button32 = new Sprite();			
			button32.graphics.beginFill(0x3B170B, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button32.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button32.graphics.endFill();		
			//button.alpha = .1;
			button32.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton32 = new OstrichButton(myCursor, button32); 
			myButton32.addEventListener(OstrichButton.MOTION_OVER, onOver32);
			myButton32.addEventListener(OstrichButton.MOTION_OUT, onOut32);
			myButton32.addEventListener(OstrichButton.MOTION_HOLD, onHold32);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button33 = new Sprite();			
			button33.graphics.beginFill(0x2E2EFE, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button33.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button33.graphics.endFill();		
			//button.alpha = .1;
			button33.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton33 = new OstrichButton(myCursor, button33); 
			myButton33.addEventListener(OstrichButton.MOTION_OVER, onOver33);
			myButton33.addEventListener(OstrichButton.MOTION_OUT, onOut33);
			myButton33.addEventListener(OstrichButton.MOTION_HOLD, onHold33);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button34 = new Sprite();			
			button34.graphics.beginFill(0x04B404, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button34.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button34.graphics.endFill();		
			//button.alpha = .1;
			button34.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton34 = new OstrichButton(myCursor, button34); 
			myButton34.addEventListener(OstrichButton.MOTION_OVER, onOver34);
			myButton34.addEventListener(OstrichButton.MOTION_OUT, onOut34);
			myButton34.addEventListener(OstrichButton.MOTION_HOLD, onHold34);
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button35 = new Sprite();			
			button35.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			//button11.graphics.drawCircle(260,300,70);
			button35.graphics.drawRect(260,300,200,50);
			button35.graphics.endFill();		
			//button.alpha = .1;
			button35.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton35 = new OstrichButton(myCursor, button35); 
			myButton35.addEventListener(OstrichButton.MOTION_OVER, onOver35);
			myButton35.addEventListener(OstrichButton.MOTION_OUT, onOut35);
			myButton35.addEventListener(OstrichButton.MOTION_HOLD, onHold35);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button36 = new Sprite();			
			button36.graphics.beginFill(0xFFFF00, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button36.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button36.graphics.endFill();		
			//button.alpha = .1;
			button36.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton36 = new OstrichButton(myCursor, button36); 
			myButton36.addEventListener(OstrichButton.MOTION_OVER, onOver36);
			myButton36.addEventListener(OstrichButton.MOTION_OUT, onOut36);
			myButton36.addEventListener(OstrichButton.MOTION_HOLD, onHold36);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button37 = new Sprite();			
			button37.graphics.beginFill(0xFE2E2E, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button37.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button37.graphics.endFill();		
			//button.alpha = .1;
			button37.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton37 = new OstrichButton(myCursor, button37); 
			myButton37.addEventListener(OstrichButton.MOTION_OVER, onOver37);
			myButton37.addEventListener(OstrichButton.MOTION_OUT, onOut37);
			myButton37.addEventListener(OstrichButton.MOTION_HOLD, onHold37);
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button38 = new Sprite();			
			button38.graphics.beginFill(0xFFFFFFF, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			//button11.graphics.drawCircle(260,300,70);
			button38.graphics.drawRect(260,300,200,50);
			button38.graphics.endFill();		
			//button.alpha = .1;
			button38.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton38 = new OstrichButton(myCursor, button38); 
			myButton38.addEventListener(OstrichButton.MOTION_OVER, onOver38);
			myButton38.addEventListener(OstrichButton.MOTION_OUT, onOut38);
			myButton38.addEventListener(OstrichButton.MOTION_HOLD, onHold38);
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button39 = new Sprite();			
			button39.graphics.beginFill(0x04B404, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button39.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button39.graphics.endFill();		
			//button.alpha = .1;
			button39.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton39 = new OstrichButton(myCursor, button39); 
			myButton39.addEventListener(OstrichButton.MOTION_OVER, onOver39);
			myButton39.addEventListener(OstrichButton.MOTION_OUT, onOut39);
			myButton39.addEventListener(OstrichButton.MOTION_HOLD, onHold39);
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button40 = new Sprite();			
			button40.graphics.beginFill(0x2E2EFE, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button40.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button40.graphics.endFill();		
			//button.alpha = .1;
			button40.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton40 = new OstrichButton(myCursor, button40); 
			myButton40.addEventListener(OstrichButton.MOTION_OVER, onOver40);
			myButton40.addEventListener(OstrichButton.MOTION_OUT, onOut40);
			myButton40.addEventListener(OstrichButton.MOTION_HOLD, onHold40);
			
			
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button41 = new Sprite();			
			button41.graphics.beginFill(0xFFFF00, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button41.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button41.graphics.endFill();		
			//button.alpha = .1;
			button41.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton41 = new OstrichButton(myCursor, button41); 
			myButton41.addEventListener(OstrichButton.MOTION_OVER, onOver41);
			myButton41.addEventListener(OstrichButton.MOTION_OUT, onOut41);
			myButton41.addEventListener(OstrichButton.MOTION_HOLD, onHold41);
			
			
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button42 = new Sprite();			
			button42.graphics.beginFill(0xFE2E2E, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button42.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button42.graphics.endFill();		
			//button.alpha = .1;
			button42.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton42 = new OstrichButton(myCursor, button42); 
			myButton42.addEventListener(OstrichButton.MOTION_OVER, onOver42);
			myButton42.addEventListener(OstrichButton.MOTION_OUT, onOut42);
			myButton42.addEventListener(OstrichButton.MOTION_HOLD, onHold42);
			
			
			
			
	
			
			// make a sprite to act as a button - could just be a clip on the stage
			button43 = new Sprite();			
			button43.graphics.beginFill(0x04B404, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button43.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button43.graphics.endFill();		
			//button.alpha = .1;
			button43.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton43 = new OstrichButton(myCursor, button43); 
			myButton43.addEventListener(OstrichButton.MOTION_OVER, onOver43);
			myButton43.addEventListener(OstrichButton.MOTION_OUT, onOut43);
			myButton43.addEventListener(OstrichButton.MOTION_HOLD, onHold43);
			
			
			// make a sprite to act as a button - could just be a clip on the stage
			button44 = new Sprite();			
			button44.graphics.beginFill(0x2E2EFE, 0.1);
			//button2.graphics.drawRoundRect(200,200,100,100,16);
			button44.graphics.drawCircle(260,300,50);
			//button14.graphics.drawRect(260,300,200,50);
			button44.graphics.endFill();		
			//button.alpha = .1;
			button44.x=3060;
		    //addChild(button11);	
			
			
			// make a OstrichButton object (there is one more optional parameter)
			myButton44 = new OstrichButton(myCursor, button44); 
			myButton44.addEventListener(OstrichButton.MOTION_OVER, onOver44);
			myButton44.addEventListener(OstrichButton.MOTION_OUT, onOut44);
			myButton44.addEventListener(OstrichButton.MOTION_HOLD, onHold44);
			
			
			
			
			
			  texto.text="";
		    texto2.text="";
			  texto3.text="";
			  texto4.text="";
			
			
			
			prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma);
function comprobarFotograma(e:Event){
if(prendas2.currentFrame == 18){


   
			//button3.y=420;
            button3.x=15;
			button3.y=-206;
  addChild(button3);	


}
}
			
			
			
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma2);
function comprobarFotograma2(e:Event){
if(prendas2.currentFrame != 18){


            button3.x=300;
			button3.y=620;
		 // removeChild(button3);	
		


}
}	
			
			
			
			prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma3);
function comprobarFotograma3(e:Event){
if(prendas2.currentFrame == 19){


   
			//button3.y=420;
            button4.x=430;
			button4.y=-179;
  addChild(button4);	


}
}
			
			
			
			
			prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma4);
function comprobarFotograma4(e:Event){
if(prendas2.currentFrame != 19){


            button4.x=300;
			button4.y=620;
		 // removeChild(button4);	
		


}
}
			
			
		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma5);
function comprobarFotograma5(e:Event){
if(prendas2.currentFrame == 20){


   
			//button3.y=420;
            button5.x=390;
			button5.y=243;
  addChild(button5);	
  
  
 	


}
}
			
			
			
			
			
			
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma6);
function comprobarFotograma6(e:Event){
if(prendas2.currentFrame != 20){


            button5.x=3000;
			button5.y=620;
		 // removeChild(button5);	
		  
		 
		


}
}
		
		
		
		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma7);
function comprobarFotograma7(e:Event){
if(prendas2.currentFrame == 20){


   
			//button3.y=420;
            button6.x=-7;
			button6.y=243;
  addChild(button6);	
  
  
 	


}
}
			
			
			
			
				prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma8);
function comprobarFotograma8(e:Event){
if(prendas2.currentFrame != 20){


            button6.x=3000;
			button6.y=620;
		 // removeChild(button6);	
		  
		 
		


}
}
			
		
		
				
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma9);
function comprobarFotograma9(e:Event){
if(prendas2.currentFrame == 2 || prendas2.currentFrame == 3 || prendas2.currentFrame == 10 || prendas2.currentFrame >= 18 && prendas2.currentFrame <= 48 || prendas2.currentFrame == 50){


            button.x=300;
			button.y=620;
		    //removeChild(button);	
		


}
}	
		
		
	
		
		
			
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma10);
function comprobarFotograma10(e:Event){
if(prendas2.currentFrame == 2 ){


            button7.x=-100;
			button7.y=-170;
		 addChild(button7);	
		
		  button8.x=-100;
			button8.y=192;
		  addChild(button8);		
		  
		    button9.x=560;
			button9.y=192;
		  addChild(button9);		
		  
		   button10.x=560;
			button10.y=-170;
		  addChild(button10);		


}
}




				
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma11);
function comprobarFotograma11(e:Event){
if(prendas2.currentFrame != 2){


            button7.x=300;
			button7.y=720;
		  //removeChild(button7);	
		
		  button8.x=300;
			button8.y=720;
		  //removeChild(button8);	
		  
		  
		      button9.x=300;
			button9.y=720;
		 // removeChild(button9);	
		
		    button10.x=300;
			button10.y=720;
		  //removeChild(button10);	


}
}	






		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma12);
function comprobarFotograma12(e:Event){
if(prendas2.currentFrame == 3){


            button11.x=130;
			button11.y=-235;
		 addChild(button11);	
		 
		 
		 
		
			

			
		


}
}




				
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma13);
function comprobarFotograma13(e:Event){
if(prendas2.currentFrame != 3){


            button11.x=300;
			button11.y=720;
		  //removeChild(button11);	
		  
		



}
}	





		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma14);
function comprobarFotograma14(e:Event){
if(prendas2.currentFrame >= 4 && prendas2.currentFrame <= 9 || prendas2.currentFrame == 11 || prendas2.currentFrame >= 11 && prendas2.currentFrame <= 17 || prendas2.currentFrame == 49){

            button.x=670;
			button.y=0;
		    addChild(button);	
			
		


}
}

		
		
		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma15);
function comprobarFotograma15(e:Event){
if(prendas2.currentFrame >= 5 && prendas2.currentFrame <= 10 || prendas2.currentFrame >= 12 && prendas2.currentFrame <= 26){

			
			button2.x=-160;
			button2.y=0;
		    addChild(button2);	
		


}
}



prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma16);
function comprobarFotograma16(e:Event){
if(prendas2.currentFrame == 2 || prendas2.currentFrame == 3 || prendas2.currentFrame == 4 || prendas2.currentFrame >= 26 || prendas2.currentFrame == 11 ){


		
		  button2.x=300;
		  button2.y=620;
		  //removeChild(button);	


}
}	





		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma17);
function comprobarFotograma17(e:Event){
if(prendas2.currentFrame == 10 || prendas2.currentFrame == 35){


            button12.x=130;
			button12.y=-235;
		 addChild(button12);	
		


}
}



	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma18);
function comprobarFotograma18(e:Event){
if(prendas2.currentFrame != 10){


            button12.x=300;
			button12.y=720;
		  //removeChild(button11);	



}
}	



		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma19);
function comprobarFotograma19(e:Event){
if(prendas2.currentFrame == 34){


            button13.x=130;
			button13.y=-235;
		 addChild(button13);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma20);
function comprobarFotograma20(e:Event){
if(prendas2.currentFrame != 34){


            button13.x=300;
			button13.y=720;
		  //removeChild(button11);	



}
}	




		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma21);
function comprobarFotograma21(e:Event){
if(prendas2.currentFrame == 21){


            button15.x=-30;
			button15.y=-165;
		 addChild(button15);	
		 
		  button14.x=430;
		  button14.y=-165;
		 addChild(button14);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma22);
function comprobarFotograma22(e:Event){
if(prendas2.currentFrame != 21){


            button14.x=300;
			button14.y=720;
		  //removeChild(button11);	
		  
		  button15.x=300;
			button15.y=720;
		  //removeChild(button11);




}
}	




		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma23);
function comprobarFotograma23(e:Event){
if(prendas2.currentFrame == 35){


     
		 
		 button16.x=130;
			button16.y=-235;
		 addChild(button16);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma24);
function comprobarFotograma24(e:Event){
if(prendas2.currentFrame != 35){


            button16.x=300;
			button16.y=720;
		  //removeChild(button11);	



}
}	
		
		
		
		
		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma25);
function comprobarFotograma25(e:Event){
if(prendas2.currentFrame == 22){


     
		 
		button17.x=-30;
			button17.y=-165;
		 addChild(button17);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma26);
function comprobarFotograma26(e:Event){
if(prendas2.currentFrame != 22){


            button17.x=300;
			button17.y=720;
		  //removeChild(button11);	



}
}	






		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma27);
function comprobarFotograma27(e:Event){
if(prendas2.currentFrame == 23){


            button18.x=-30;
			button18.y=165;
		 addChild(button18);	
		 
		  button19.x=430;
		  button19.y=165;
		 addChild(button19);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma28);
function comprobarFotograma28(e:Event){
if(prendas2.currentFrame != 23){


            button18.x=300;
			button18.y=720;
		  //removeChild(button11);	
		  
		  button19.x=300;
			button19.y=720;
		  //removeChild(button11);




}
}	
		
		
		
		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma29);
function comprobarFotograma29(e:Event){
if(prendas2.currentFrame == 36){


     
		 
		 button20.x=130;
			button20.y=-235;
		 addChild(button20);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma30);
function comprobarFotograma30(e:Event){
if(prendas2.currentFrame != 36){


            button20.x=300;
			button20.y=720;
		  //removeChild(button11);	



}
}	





		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma31);
function comprobarFotograma31(e:Event){
if(prendas2.currentFrame == 24){


     
		 
		button21.x=430;
			button21.y=-165;
		 addChild(button21);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma32);
function comprobarFotograma32(e:Event){
if(prendas2.currentFrame != 24){


            button21.x=300;
			button21.y=720;
		  //removeChild(button11);	



}
}	
		
		
		
				prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma33);
function comprobarFotograma33(e:Event){
if(prendas2.currentFrame == 25){


     
		 
		button22.x=30;
			button22.y=-165;
		 addChild(button22);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma34);
function comprobarFotograma34(e:Event){
if(prendas2.currentFrame != 25){


            button22.x=300;
			button22.y=720;
		  //removeChild(button11);	



}
}	
		
		


	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma35);
function comprobarFotograma35(e:Event){
if(prendas2.currentFrame == 29){


     
		 
		 button23.x=130;
			button23.y=-235;
		 addChild(button23);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma36);
function comprobarFotograma36(e:Event){
if(prendas2.currentFrame != 29){


            button23.x=300;
			button23.y=720;
		  //removeChild(button11);	



}
}	




			prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma37);
function comprobarFotograma37(e:Event){
if(prendas2.currentFrame == 38){


   
			//button3.y=420;
            button24.x=15;
			button24.y=-206;
  addChild(button24);	


}
}
			
			
			
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma38);
function comprobarFotograma38(e:Event){
if(prendas2.currentFrame != 38){


            button24.x=300;
			button24.y=620;
		 // removeChild(button3);	
		


}
}	
			
			
			
			prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma39);
function comprobarFotograma39(e:Event){
if(prendas2.currentFrame == 39){


   
			//button3.y=420;
            button25.x=430;
			button25.y=-179;
  addChild(button25);	


}
}
			
			
			
			
			prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma40);
function comprobarFotograma40(e:Event){
if(prendas2.currentFrame != 39){


            button25.x=300;
			button25.y=620;
		 // removeChild(button4);	
		


}
}





prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma41);
function comprobarFotograma41(e:Event){
if(prendas2.currentFrame == 40){


   
			//button3.y=420;
            button26.x=390;
			button26.y=243;
  addChild(button26);	
  
  
 	


}
}
			
			
			
			
			
			
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma42);
function comprobarFotograma42(e:Event){
if(prendas2.currentFrame != 40){


            button26.x=3000;
			button26.y=620;
		 // removeChild(button5);	
		  
		 
		


}
}
		
		
		
		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma43);
function comprobarFotograma43(e:Event){
if(prendas2.currentFrame == 40){


   
			//button3.y=420;
            button27.x=-7;
			button27.y=243;
  addChild(button27);	
  
  
 	


}
}
			
			
			
			
				prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma44);
function comprobarFotograma44(e:Event){
if(prendas2.currentFrame != 40){


            button27.x=3000;
			button27.y=620;
		 // removeChild(button6);	
		  
		 
		


}
}





		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma45);
function comprobarFotograma45(e:Event){
if(prendas2.currentFrame == 41){


            button28.x=-30;
			button28.y=-165;
		 addChild(button28);	
		 
		  button29.x=430;
		  button29.y=-165;
		 addChild(button29);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma46);
function comprobarFotograma46(e:Event){
if(prendas2.currentFrame != 41){


            button28.x=300;
			button28.y=720;
		  //removeChild(button11);	
		  
		  button29.x=300;
			button29.y=720;
		  //removeChild(button11);




}
}	




		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma47);
function comprobarFotograma47(e:Event){
if(prendas2.currentFrame == 42){


     
		 
		button30.x=-30;
			button30.y=-165;
		 addChild(button30);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma48);
function comprobarFotograma48(e:Event){
if(prendas2.currentFrame != 42){


            button30.x=300;
			button30.y=720;
		  //removeChild(button11);	



}
}	






		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma49);
function comprobarFotograma49(e:Event){
if(prendas2.currentFrame == 43){


            button31.x=-30;
			button31.y=165;
		 addChild(button31);	
		 
		  button32.x=430;
		  button32.y=165;
		 addChild(button32);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma50);
function comprobarFotograma50(e:Event){
if(prendas2.currentFrame != 43){


            button31.x=300;
			button31.y=720;
		  //removeChild(button11);	
		  
		  button32.x=300;
			button32.y=720;
		  //removeChild(button11);




}
}	
		


prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma51);
function comprobarFotograma51(e:Event){
if(prendas2.currentFrame == 44){


     
		 
		button33.x=430;
			button33.y=-165;
		 addChild(button33);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma52);
function comprobarFotograma52(e:Event){
if(prendas2.currentFrame != 44){


            button33.x=300;
			button33.y=720;
		  //removeChild(button11);	



}
}	
		
		
		
				prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma53);
function comprobarFotograma53(e:Event){
if(prendas2.currentFrame == 45){


     
		 
		button34.x=30;
			button34.y=-165;
		 addChild(button34);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma54);
function comprobarFotograma54(e:Event){
if(prendas2.currentFrame != 45){


            button34.x=300;
			button34.y=720;
		  //removeChild(button11);	



}
}	




	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma55);
function comprobarFotograma55(e:Event){
if(prendas2.currentFrame == 50){


     
		 
		 button35.x=130;
			button35.y=-235;
		 addChild(button35);	
		 
		 
		     formato.size=16;
			 
		
		
		  
		
		 

		 
			texto.x = 230;
			texto.y = 300;
			texto.width = 6650;
			texto.height = 6650;
			addChild(texto);
			
			texto2.x = 230;
			texto2.y = 370;
			texto2.width = 6650;
			texto2.height = 6650;
			addChild(texto2);
			
			texto3.x = 230;
			texto3.y = 440;
			texto3.width = 6650;
			texto3.height = 6650;
			addChild(texto3);
			
			texto4.x = 230;
			texto4.y = 510;
			texto4.width = 6650;
			texto4.height = 6650;
			addChild(texto4);
		

    

}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma56);
function comprobarFotograma56(e:Event){
if(prendas2.currentFrame != 50){


            button35.x=300;
			button35.y=720;
		  //removeChild(button11);	

         

			  formato.size=25;
		  formato.color=0xFF0000;
		  texto.defaultTextFormat = formato;
		   texto2.defaultTextFormat = formato;
		    texto3.defaultTextFormat = formato;
			texto4.defaultTextFormat = formato;

		    texto.x = -2130;
			texto.y = -2102;
			removeChild(texto);
			
			 texto2.x = -2130;
			texto2.y = -2102;
			removeChild(texto2);
			
			 texto3.x = -2130;
			texto3.y = -2102;
			removeChild(texto3);
			
			 texto4.x = -2130;
			texto4.y = -2102;
			removeChild(texto4);



}
}	
		


prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma57);
function comprobarFotograma57(e:Event){
if(prendas2.currentFrame == 26){


            button36.x=-30;
			button36.y=165;
		 addChild(button36);	
		 
		  button37.x=430;
		  button37.y=165;
		 addChild(button37);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma58);
function comprobarFotograma58(e:Event){
if(prendas2.currentFrame != 26){


            button36.x=300;
			button36.y=720;
		  //removeChild(button11);	
		  
		  button37.x=300;
			button37.y=720;
		  //removeChild(button11);




}
}	
		




	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma59);
function comprobarFotograma59(e:Event){
if(prendas2.currentFrame == 33){


     
		 
		 button38.x=130;
			button38.y=-235;
		 addChild(button38);	
		 
		

}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma60);
function comprobarFotograma60(e:Event){
if(prendas2.currentFrame != 33){


            button38.x=300;
			button38.y=720;
		  //removeChild(button11);	

         

	



}
}	



prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma61);
function comprobarFotograma61(e:Event){
if(prendas2.currentFrame == 28){


     
		 
		button40.x=430;
			button40.y=-165;
		 addChild(button40);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma62);
function comprobarFotograma62(e:Event){
if(prendas2.currentFrame != 28){


            button40.x=300;
			button40.y=720;
		  //removeChild(button11);	



}
}	
		
		
		
				prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma63);
function comprobarFotograma63(e:Event){
if(prendas2.currentFrame == 27){


     
		 
		button39.x=30;
			button39.y=-165;
		 addChild(button39);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma64);
function comprobarFotograma64(e:Event){
if(prendas2.currentFrame != 27){


            button39.x=300;
			button39.y=720;
		  //removeChild(button11);	



}
}	


		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma65);
function comprobarFotograma65(e:Event){
if(prendas2.currentFrame == 46){


            button41.x=-30;
			button41.y=165;
		 addChild(button41);	
		 
		  button42.x=430;
		  button42.y=165;
		 addChild(button42);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma66);
function comprobarFotograma66(e:Event){
if(prendas2.currentFrame != 46){


            button41.x=300;
			button41.y=720;
		  //removeChild(button11);	
		  
		  button42.x=300;
			button42.y=720;
		  //removeChild(button11);




}
}	
		
		
		
		prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma67);
function comprobarFotograma67(e:Event){
if(prendas2.currentFrame == 48){


     
		 
		button44.x=430;
			button44.y=-165;
		 addChild(button44);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma68);
function comprobarFotograma68(e:Event){
if(prendas2.currentFrame != 48){


            button44.x=300;
			button44.y=720;
		  //removeChild(button11);	



}
}	
		
		
		
				prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma69);
function comprobarFotograma69(e:Event){
if(prendas2.currentFrame == 47){


     
		 
		button43.x=30;
			button43.y=-165;
		 addChild(button43);	
		


}
}






	prendas2.addEventListener(Event.ENTER_FRAME, comprobarFotograma70);
function comprobarFotograma70(e:Event){
if(prendas2.currentFrame != 47){


            button43.x=300;
			button43.y=720;
		  //removeChild(button11);	



}
}	

		



		}
		
		private function animate(e:Event) {
			ball.x = myCursor.x;
			ball.y = myCursor.y;
		}
		
		private function onStart(e:Event) {
			
		}
		
		private function onStop(e:Event) {
			
		}		
		
		private function onOver(e:Event) {
			
			e.target.button.alpha = 4.8;
			prendas2.nextFrame();
    	}		
		
		private function onOut(e:Event) {
			
			e.target.button.alpha = .5;
		}		
		
		private function onHold(e:Event) {
			
			e.target.button.alpha = .2;
		}
		
		
		
		
		
		private function onOver2(e:Event) {
			
			e.target.button2.alpha = 4.8;
			prendas2.prevFrame();
			//prendas2.gotoAndPlay(1);
			
		    
    	}		
		
		private function onOut2(e:Event) {
			
			e.target.button2.alpha = .5;
		}		
		
		private function onHold2(e:Event) {
			
			e.target.button2.alpha = .2;
		}
		
		
		
		
		
		
		private function onOver3(e:Event) {
			
			e.target.button3.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(19);
		    
    	}		
		
		private function onOut3(e:Event) {
			
			e.target.button3.alpha = .5;
		}		
		
		private function onHold3(e:Event) {
			
			e.target.button3.alpha = .2;
		}
		
		
		
		
		
		private function onOver4(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button4.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(20);
		    
    	}		
		
		private function onOut4(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button4.alpha = .5;
		}		
		
		private function onHold4(e:Event) {
			
			e.target.button4.alpha = .2;
		}
		
		
		
		
		
		private function onOver5(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button5.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(34);
		    
    	}		
		
		private function onOut5(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button5.alpha = .5;
		}		
		
		private function onHold5(e:Event) {
			
			e.target.button5.alpha = .2;
		}
		
		
		
		
		
		private function onOver6(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button6.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(21);
		    
    	}		
		
		private function onOut6(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button6.alpha = .5;
		}		
		
		private function onHold6(e:Event) {
			
			e.target.button6.alpha = .2;
		}
		
		
		
		
		
		private function onOver7(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button7.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(3);
           
		    
    	}		
		
		private function onOut7(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button7.alpha = .5;
		}		
		
		private function onHold7(e:Event) {
			
			e.target.button7.alpha = .2;
		}
		
		
		
		
		
		private function onOver8(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button8.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(4);
		    
    	}		
		
		private function onOut8(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button8.alpha = .5;
		}		
		
		private function onHold8(e:Event) {
			
			e.target.button8.alpha = .2;
		}
		
		
		
		
		private function onOver9(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button9.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(11);
		    
    	}		
		
		private function onOut9(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button9.alpha = .5;
		}		
		
		private function onHold9(e:Event) {
			
			e.target.button9.alpha = .2;
		}
		
		
		
		
		
		
		private function onOver10(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button10.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(38);
		    
    	}		
		
		private function onOut10(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button10.alpha = .5;
		}		
		
		private function onHold10(e:Event) {
			
			e.target.button10.alpha = .2;
		}
		
		
		
		
		
		
		private function onOver11(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button11.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(2);
		    
    	}		
		
		private function onOut11(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button11.alpha = .5;
		}		
		
		private function onHold11(e:Event) {
			
			e.target.button11.alpha = .2;
		}
		
		
		
		
		private function onOver12(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button12.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(2);
		    
    	}		
		
		private function onOut12(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button12.alpha = .5;
		}		
		
		private function onHold12(e:Event) {
			
			e.target.button12.alpha = .2;
		}
		
		
		
		private function onOver13(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button13.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(20);
		    
    	}		
		
		private function onOut13(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button13.alpha = .5;
		}		
		
		private function onHold13(e:Event) {
			
			e.target.button13.alpha = .2;
		}
		
		
		
		
		
		
		private function onOver14(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button14.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(23);
		    
    	}		
		
		private function onOut14(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button14.alpha = .5;
		}		
		
		private function onHold14(e:Event) {
			
			e.target.button14.alpha = .2;
		}
		
		
		
		
		private function onOver15(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button15.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(35);
		    
    	}		
		
		private function onOut15(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button15.alpha = .5;
		}		
		
		private function onHold15(e:Event) {
			
			e.target.button15.alpha = .2;
		}
		
		
		
		private function onOver16(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button16.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(21);
		    
    	}		
		
		private function onOut16(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button16.alpha = .5;
		}		
		
		private function onHold16(e:Event) {
			
			e.target.button16.alpha = .2;
		}
		
		
		
		
		
		private function onOver17(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button17.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(23);
		    
    	}		
		
		private function onOut17(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button17.alpha = .5;
		}		
		
		private function onHold17(e:Event) {
			
			e.target.button17.alpha = .2;
		}
		
		
		
		
		private function onOver18(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button18.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(24);
		    
    	}		
		
		private function onOut18(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button18.alpha = .5;
		}		
		
		private function onHold18(e:Event) {
			
			e.target.button18.alpha = .2;
		}
		
		
		
		
		private function onOver19(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button19.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(36);
		    
    	}		
		
		private function onOut19(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button19.alpha = .5;
		}		
		
		private function onHold19(e:Event) {
			
			e.target.button19.alpha = .2;
		}
		
		
		
		private function onOver20(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button20.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(23);
		    
    	}		
		
		private function onOut20(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button20.alpha = .5;
		}		
		
		private function onHold20(e:Event) {
			
			e.target.button20.alpha = .2;
		}
		
		
		
		private function onOver21(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button21.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(25);
		    
    	}		
		
		private function onOut21(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button21.alpha = .5;
		}		
		
		private function onHold21(e:Event) {
			
			e.target.button21.alpha = .2;
		}
		
		
		
		
		private function onOver22(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button22.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(26);
		    
    	}		
		
		private function onOut22(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button22.alpha = .5;
		}		
		
		private function onHold22(e:Event) {
			
			e.target.button22.alpha = .2;
		}
		
		
		
				private function onOver23(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button23.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(2);
		    
    	}		
		
		private function onOut23(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button23.alpha = .5;
		}		
		
		private function onHold23(e:Event) {
			
			e.target.button23.alpha = .2;
		}
		
		
		
		
		
						private function onOver24(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button24.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
			  texto.text="";
		    texto2.text="";
			  texto3.text="";
			  texto4.text="";
		    
    	}		
		
		private function onOut24(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button24.alpha = .5;
		}		
		
		private function onHold24(e:Event) {
			
			e.target.button24.alpha = .2;
		}
		
		
		
		
				private function onOver25(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button25.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
			
		    
    	}		
		
		private function onOut25(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button25.alpha = .5;
		}		
		
		private function onHold25(e:Event) {
			
			e.target.button25.alpha = .2;
		}
		
		
		
		
				private function onOver26(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button26.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
			texto.text = "Seleccionaste mal el primer circuito integrado";
		    
    	}		
		
		private function onOut26(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button26.alpha = .5;
		}		
		
		private function onHold26(e:Event) {
			
			e.target.button26.alpha = .2;
		}
		
		
				private function onOver27(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button27.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut27(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button27.alpha = .5;
		}		
		
		private function onHold27(e:Event) {
			
			e.target.button27.alpha = .2;
		}
		
		
		
				private function onOver28(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button28.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
			texto2.text = "Seleccionaste mal el segundo circuito integrado";
		    
    	}		
		
		private function onOut28(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button28.alpha = .5;
		}		
		
		private function onHold28(e:Event) {
			
			e.target.button28.alpha = .2;
		}
		
		
		
				private function onOver29(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button29.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut29(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button29.alpha = .5;
		}		
		
		private function onHold29(e:Event) {
			
			e.target.button29.alpha = .2;
		}
		
		
		
		
				private function onOver30(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button30.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut30(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button30.alpha = .5;
		}		
		
		private function onHold30(e:Event) {
			
			e.target.button30.alpha = .2;
		}
		
		
		
				private function onOver31(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button31.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut31(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button31.alpha = .5;
		}		
		
		private function onHold31(e:Event) {
			
			e.target.button31.alpha = .2;
		}
		
		
		
		
				private function onOver32(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button32.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
			texto3.text = "Seleccionaste mal la resistencia";
		    
    	}		
		
		private function onOut32(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button32.alpha = .5;
		}		
		
		private function onHold32(e:Event) {
			
			e.target.button32.alpha = .2;
		}
		
		
		
				private function onOver33(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button33.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut33(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button33.alpha = .5;
		}		
		
		private function onHold33(e:Event) {
			
			e.target.button33.alpha = .2;
		}
		
		
		
				private function onOver34(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button34.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut34(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button34.alpha = .5;
		}		
		
		private function onHold34(e:Event) {
			
			e.target.button34.alpha = .2;
		}
		
		
		
				private function onOver35(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button35.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(2);
		    
    	}		
		
		private function onOut35(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button35.alpha = .5;
		}		
		
		private function onHold35(e:Event) {
			
			e.target.button35.alpha = .2;
		}
		
		
		
		
		private function onOver36(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button36.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(27);
		    
    	}		
		
		private function onOut36(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button36.alpha = .5;
		}		
		
		private function onHold36(e:Event) {
			
			e.target.button36.alpha = .2;
		}
		
		
		
		private function onOver37(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button37.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(33);
		    
    	}		
		
		private function onOut37(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button37.alpha = .5;
		}		
		
		private function onHold37(e:Event) {
			
			e.target.button37.alpha = .2;
		}
		
		
		
		private function onOver38(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button38.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(26);
		    
    	}		
		
		private function onOut38(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button38.alpha = .5;
		}		
		
		private function onHold38(e:Event) {
			
			e.target.button38.alpha = .2;
		}
		
		
		
		private function onOver39(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button39.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(28);
		    
    	}		
		
		private function onOut39(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button39.alpha = .5;
		}		
		
		private function onHold39(e:Event) {
			
			e.target.button39.alpha = .2;
		}
		
		
		
		private function onOver40(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button40.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.gotoAndStop(29);
		    
    	}		
		
		private function onOut40(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button40.alpha = .5;
		}		
		
		private function onHold40(e:Event) {
			
			e.target.button40.alpha = .2;
		}
		
		
		
		
				private function onOver41(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button41.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut41(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button41.alpha = .5;
		}		
		
		private function onHold41(e:Event) {
			
			e.target.button41.alpha = .2;
		}
		
		
		
		
				private function onOver42(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button42.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
			texto4.text = "Seleccionaste mal la pila";
		    
    	}		
		
		private function onOut42(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button42.alpha = .5;
		}		
		
		private function onHold42(e:Event) {
			
			e.target.button42.alpha = .2;
		}
		
		
		
		
		
		
				private function onOver43(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button43.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut43(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button43.alpha = .5;
		}		
		
		private function onHold43(e:Event) {
			
			e.target.button43.alpha = .2;
		}
		
		
		
		
		
				private function onOver44(e:Event) {
			//trace ("Motion over button number " + e.target.buttonNum4);
			e.target.button44.alpha = 4.8;
			//prendas2.prevFrame();
			prendas2.nextFrame();
		    
    	}		
		
		private function onOut44(e:Event) {
			//trace ("motion out from button number " + e.target.buttonNum4);
			e.target.button44.alpha = .5;
		}		
		
		private function onHold44(e:Event) {
			
			e.target.button44.alpha = .2;
		}
		
		
				function moveToTop(clip:Object = null):void
				{
				if (prendas2 == null) return;
				if (prendas2.parent) prendas2.parent.setChildIndex(prendas2, prendas2.parent.numChildren - 1);
				}
				
				function moveToTop2(clip:Object = null):void
				{
				if (s == null) return;
				if (s.parent) s.parent.setChildIndex(s, s.parent.numChildren - 1);
				}
		
			
	}
	
}