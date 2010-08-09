package com.telecoms.media.xmlAgendaEditor.model
{
	import mx.collections.ArrayCollection;
	
	[Bindable]
	public class AgendaModelLocator
	{
		static public var __instance:AgendaModelLocator=null;
		public var loadedAgenda:XML = new XML;
		public var menuBarItemList:Array = [
			{label: "Home", data: "welcomeScreen"}, 
			{label: "Load Agenda", data: "loadAgenda"}, 
			{label: "Save Agenda", data: "saveAgenda"}
		];
		public var menubarXML:XMLList =<>
						<menuitem label="File">
							<menuitem label="Home" data="welcomeScreen"/>
							<menuitem label="Load Agenda" data="loadAgenda"/>
							<menuitem label="Save Agenda" data="saveAgenda"/>
						</menuitem>
						</>
		static public function getInstance():AgendaModelLocator
		{
			if(__instance == null)
			{
				__instance = new AgendaModelLocator();
			}
			return __instance;
		}
	}	
}