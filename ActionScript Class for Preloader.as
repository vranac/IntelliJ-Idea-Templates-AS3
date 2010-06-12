package ${PACKAGE_NAME}#if (${PACKAGE_NAME} != "") #end{

import flash.display.Sprite;
import flash.events.Event;
/*
 * In the Project Structure -> Modules -> Flex Compiler Settings, add under additional compiler options
 * -frame=start,${NAME}
 */
public class ${NAME} extends Sprite {
    public function ${NAME}():void {
        if (stage)
            init();
        else
            addEventListener(Event.ADDED_TO_STAGE, init);
    }
    private function init(e:Event = null):void {
        removeEventListener(Event.ADDED_TO_STAGE, init);
    }
}
}