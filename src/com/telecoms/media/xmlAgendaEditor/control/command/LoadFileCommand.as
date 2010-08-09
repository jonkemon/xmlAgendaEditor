package com.telecoms.media.xmlAgendaEditor.control.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	import com.telecoms.media.xmlAgendaEditor.control.delegates.LoadFileDelegate;
	import com.telecoms.media.xmlAgendaEditor.model.AgendaModelLocator;
	import flash.external.ExternalInterface;
	
	import mx.controls.Alert;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;

	public class LoadFileCommand implements ICommand
	{		
		private var model:AgendaModelLocator = AgendaModelLocator.getInstance();
		public function execute(event:CairngormEvent):void
		{
			var responder:Responder = new Responder(onResults,onFault);
			var delegate:LoadFileDelegate = new LoadFileDelegate(responder);
			delegate.loadFile();
		}
		private function onFault(event:FaultEvent):void
		{
			Alert.show('No data was found...');
		}
		private function onResults(event:ResultEvent):void
		{
			model.loadedAgenda = event.token.result as XML;
			
			var totalImages:int = model.loadedAgenda.images.length();
			for (var i:int=0;i<totalImages;i++){
			var photo:String = new String;
			photo = model.loadedAgenda.images[i].url;
			//model.photoObjects.addItem(photo);
			}
		}
	}
}