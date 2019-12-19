	

    package com.zguillez.core
    {
        import flash.display.MovieClip;
        import com.zguillez.core.FrameScript;
        //--------------------------------------------------------------------------------
        public class TimelineScript
        {
            private var _ruta:MovieClip;
            private var _frameScript:Array = new Array();
            //----------------------------------------------------------------------------
            public function TimelineScript(ruta:MovieClip)
            {
                _ruta = ruta;
                initArray();
            }
            //----------------------------------------------------------------------------
            private function initArray():void
            {
                for (var i:uint = 0; i <= _ruta.totalFrames; i++)
                {
                    _frameScript.push(void);
                }
            }
            //----------------------------------------------------------------------------
            public function setFrame(n:uint, s:FrameScript):void
            {
                s.timelineScript = this;
                _frameScript[n] = s;
                if (n == _ruta.currentFrame)
                {
                    _frameScript[n].init();
                }
            }
            //----------------------------------------------------------------------------
            public function update():void
            {
                _frameScript[_ruta.currentFrame].init();
            }
            //----------------------------------------------------------------------------
        }
    }

