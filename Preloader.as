package ${PACKAGE_NAME}#if (${PACKAGE_NAME} != "") #end{

import flash.display.DisplayObject;
import flash.display.MovieClip;
import flash.events.Event;
import flash.events.ProgressEvent;
import flash.utils.getDefinitionByName;

/*
 * In the Project Structure -> Modules -> Flex Compiler Settings, set ${NAME} as Main Class
 */
public class ${NAME} extends MovieClip 
{
    public function ${NAME}() 
    {
        addEventListener(Event.ENTER_FRAME, checkFrame);
        loaderInfo.addEventListener(ProgressEvent.PROGRESS, progress);
        // show loader
    }
		
    private function progress(e:ProgressEvent):void 
    {
        // update loader
    }
		
    private function checkFrame(e:Event):void 
    {
        if (currentFrame == totalFrames) 
        {
            removeEventListener(Event.ENTER_FRAME, checkFrame);
            startup();
        }
    }
		
    private function startup():void 
    {
        // hide loader
        stop();
        loaderInfo.removeEventListener(ProgressEvent.PROGRESS, progress);
        var mainClass:Class = getDefinitionByName("${MAINCLASS}") as Class;
        addChild(new mainClass() as DisplayObject);
    }   
 }
 }