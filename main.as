package  {
	
	import flash.display.MovieClip;
	import flash.events.*;
	import flash.net.URLVariables;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	import flash.net.URLLoader;
	import flash.net.URLLoaderDataFormat;
	
	public class main extends MovieClip {
		
		
		public function main() {
			sm_btn.addEventListener(MouseEvent.CLICK, checkLogin);
		}
		
		public function checkLogin(e:MouseEvent):void{
			// if username and password are empty
			if(un_txt.length == 1){
				trace("empty");
			}
			if(pw_txt.length == 1){
				trace("empty");
			}
			
			processLogin();
		}
		
		public function processLogin():void{
			// declare variables that will send to php
			var myUrl:URLVariables = new URLVariables();
			
			// declare URLRequest variable, get the file path
			var myRequest:URLRequest = new URLRequest("http://loginsystem.test/process.php");
			
			// use the post method in php
			myRequest.method = URLRequestMethod.POST;
			
			// attach the php variables to the URLRequest
			myRequest.data = myUrl;
			
			// Create a loader to load and send our url request
			var loader:URLLoader = new URLLoader();
			loader.dataFormat = URLLoaderDataFormat.VARIABLES;
			loader.addEventListener(Event.COMPLETE, displayResult);
			
			// create the variables to send to php file
			myUrl.username = un_txt.text;
			myUrl.password = pw_txt.text;
			
			// start the connection between flash and php
			loader.load(myRequest);
			
		}
		
		public function displayResult(e:Event):void{
			trace(e.target.data.displayMsg);
			display_txt.text = "" + e.target.data.displayMsg;
		}
	}
	
}
