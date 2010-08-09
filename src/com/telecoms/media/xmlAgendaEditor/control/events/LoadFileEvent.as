package com.telecoms.media.xmlAgendaEditor.control.events
{
	import com.adobe.cairngorm.control.CairngormEvent;

	public class LoadFileEvent extends CairngormEvent
	{
		static public var EVENT_ID:String = "LoadFile";
		
		public function LoadFileEvent()
		{
			super(EVENT_ID);
			trace(this);
		}
	}
}