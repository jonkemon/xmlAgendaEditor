package com.telecoms.media.xmlAgendaEditor.control.delegates
{
	import com.adobe.cairngorm.business.ServiceLocator;
	
	import mx.rpc.AsyncToken;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	public class LoadFileDelegate
	{
		private var __locator:ServiceLocator = ServiceLocator.getInstance();
		private var __service:HTTPService;
		private var __responder:IResponder;
		
		public function LoadFileDelegate(responder:IResponder)
		{
			__service = __locator.getHTTPService("xmlRetrieve");
			__responder = responder;
		}
		
		public function loadFile():void
		{
			var token:AsyncToken = __service.send();
			token.addResponder(__responder);
		}
	}
}