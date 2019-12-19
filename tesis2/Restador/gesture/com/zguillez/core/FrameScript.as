	

    package com.zguillez.core
    {
        import flash.display.MovieClip;
        import flash.events.Event;
        import com.zguillez.core.TimelineScript;
        //--------------------------------------------------------------------------------
        public class FrameScript
        {
            protected var _ruta:MovieClip;
            private var _timelineScript:TimelineScript;
            //----------------------------------------------------------------------------
            public function FrameScript(ruta:MovieClip)
            {
                _ruta = ruta;
            }
            //----------------------------------------------------------------------------
            internal function set timelineScript(t:TimelineScript):void
            {
                _timelineScript = t;
            }
            //----------------------------------------------------------------------------
            public final function init():void
            {
                _ruta.stage.addEventListener(Event.ENTER_FRAME, iniActions);
            }
            //----------------------------------------------------------------------------
            private final function iniActions(e:Event):void
            {
                if (_ruta.numChildren > 0)
                {
                    if (_ruta.getChildAt(0) != null)
                    {
                        _ruta.stage.removeEventListener(Event.ENTER_FRAME, iniActions);
                        actions();
                    }
                }
                else
                {  
                    _ruta.stage.removeEventListener(Event.ENTER_FRAME, iniActions);        
                    actions();
                }
            }
            //----------------------------------------------------------------------------
            protected function actions():void { /* override */ }
            //----------------------------------------------------------------------------
            protected final function gotoFrame(f:uint):void
            {
                _ruta.gotoAndStop(f);
                _timelineScript.update();
            }
            //----------------------------------------------------------------------------
        }
    }

