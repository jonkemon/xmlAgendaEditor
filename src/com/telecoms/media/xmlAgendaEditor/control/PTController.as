package com.telecoms.media.xmlAgendaEditor.control
{
	import com.adobe.cairngorm.control.FrontController;
	import com.telecoms.media.xmlAgendaEditor.control.command.LoadFileCommand;
	import com.telecoms.media.xmlAgendaEditor.control.events.LoadFileEvent;

	public class PTController extends FrontController
	{
		public function PTController()
		{
			super();
			addCommand(LoadFileEvent.EVENT_ID, LoadFileCommand);
		}
		
	}
}