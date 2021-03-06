package com.baidu.config
{
	public class PlayerConfig
	{
		public function PlayerConfig()
		{
		}
		
		/**
		 * 视频地址
		 */
		private var _file:String = "";
		
		/**
		 * 字幕地址
		 */
		private var _srturl:String = "";
		
		/**
		 * 是否自动播放
		 */
		private var _autoStart:Boolean = true;
		
		public function GetAutoStart():Boolean {
			return _autoStart;
		}
		public function SetAutoStart(autoStart:Boolean):void {
			_autoStart = autoStart;
		}
		
		
		/**
		 * 搜索字幕函数
		 */
		private var _searchSrtFunc:String = "";
		
		private var _onPlayOverFunc:String = "";
		
		private var _onPlayerErrorFunc:String = "";
		
		
		private var _onSeekFunc:String = "";
		
		private var _onPlayFunc:String = "";
		
		private var _onPauseFunc:String = "";
		
		/**
		 * 视频类型，默认为 mpeg
		 * 可选： pm4等
		 */
		private var _resourceType:String = "mpeg";
		
		public function GetResourceType():String {
			return _resourceType;
		}
		public function SetResourceType(type:String):void{
			_resourceType = type;
		}
		
		private var _md5:String = "";
		
		public function GetMd5():String {
			return _md5;
		}
		public function SetMd5(md5:String):void{
			_md5 = md5;
		}
		
		private var _fileName:String = "";
		
		public function GetFileName():String {
			return _fileName;
		}
		public function SetFileName(fileName:String):void {
			_fileName = fileName;
		}
		
		private var _onReadyFunc:String = "";
		
		private var _onLoadFunc:String = "";
		
		public function GetOnReadyFunc():String {
			return _onReadyFunc;
		}
		public function SetOnReadyFunc(onReadyFunc:String):void {
			_onReadyFunc = replaceXssStr(onReadyFunc);
		}
		
		public function GetOnLoadFunc():String {
			return _onLoadFunc;
		}
		public function SetOnLoadFunc(onLoadFunc:String):void {
			_onLoadFunc = replaceXssStr(onLoadFunc);
		}
		
		
		private var _onTimeFunc:String = "";
		
		public function GetOnTimeFunc():String {
			return _onTimeFunc;
		}
		public function SetOnTimeFunc(onTimeFunc:String):void {
			_onTimeFunc = replaceXssStr(onTimeFunc);
		}
		
		private var _fsid:String = "";
		
		public function GetFile():String {
			return _file;
		}
		public function SetFile(file:String):void {
			_file = file;
		}
		
		public function GetFsid():String {
			return _fsid;
		}
		public function SetFsid(fsid:String):void {
			_fsid = fsid;
		}
		
		public function GetSrturl():String {
			return _srturl;
		}
		public function SetSrturl(srtUrl:String):void {
			_srturl = srtUrl;
		}
		
		public function GetSearchSrtFunc():String {
			return _searchSrtFunc;
		}
		public function SetSearchSrtFunc(searchSrtFunc:String):void {
			_searchSrtFunc = searchSrtFunc;
		}
		
		public function GetOnSeekFunc():String {
			return _onSeekFunc;
		}
		public function SetOnSeekFunc(onSeekFunc:String):void {
			_onSeekFunc = onSeekFunc;
		}
		
		public function GetOnPlayOverFunc():String {
			return _onPlayOverFunc;
		}
		public function SetOnPlayOverFunc(onPlayOverFunc:String):void {
			_onPlayOverFunc = replaceXssStr(onPlayOverFunc);;
		}
		
		public function GetOnPlayerErrorFunc():String {
			return _onPlayerErrorFunc;
		}
		public function SetOnPlayerErrorFunc(onPlayerErrorFunc:String):void {
			_onPlayerErrorFunc = replaceXssStr(onPlayerErrorFunc);
		}
		
		private function replaceXssStr(str:String):String {
			str = str || '';
			str = str.replace(/(\(|\)|>|<|'|")/g, '');
			return str;
		}
		
		private var _showSearch:String = "";
		
		public function GetShowSearch():String {
			return _showSearch;
		}
		public function SetShowSearch(showSearch:String):void {
			_showSearch = showSearch;
		}
		
		public function GetOnPlayFunc():String {
			return _onPlayFunc;
		}
		public function SetOnPlayFunc(onPlayFunc:String):void {
			_onPlayFunc = onPlayFunc;
		}
		
		public function GetOnPauseFunc():String {
			return _onPauseFunc;
		}
		public function SetOnPauseFunc(onPauseFunc:String):void {
			_onPauseFunc = onPauseFunc;
		}
		
		
		private var _onBeforePlayFunc:String = '';
		public function GetOnBeforePlayFunc():String {
			return _onBeforePlayFunc;
		}
		public function SetOnBeforePlayFunc(onBeforePlayFunc:String):void {
			_onBeforePlayFunc = onBeforePlayFunc;
		}
		
		private var _onBeforeSeekFunc:String = '';
		public function GetOnBeforeSeekFunc():String {
			return _onBeforeSeekFunc;
		}
		public function SetOnBeforeSeekFunc(onBeforeSeekFunc:String):void {
			_onBeforeSeekFunc = onBeforeSeekFunc;
		}
		
		
		
		public static function initConfig(info:Object):PlayerConfig {
			var config:PlayerConfig = new PlayerConfig();
			//file infos
			config.SetFile(info.file);
			if (info.srturl) {
				config.SetSrturl(info.srturl);
			}
			config.SetFsid(info.fsid);
			
			//settings
			config.SetShowSearch(info.showSearch);
			
			//callbacks
			config.SetOnPlayOverFunc(info.onOver);
			config.SetOnPlayerErrorFunc(info.onError);
			config.SetOnReadyFunc(info.onReady);
			config.SetOnTimeFunc(info.onTime);
			config.SetOnLoadFunc(info.onLoad);
			config.SetOnSeekFunc(info.onSeek);
			config.SetOnPlayFunc(info.onPlay);
			config.SetOnPauseFunc(info.onPause);
			
			config.SetOnBeforePlayFunc(info.onBeforePlay);
			config.SetOnBeforeSeekFunc(info.onBeforeSeek);
			
			if (info.autoStart == 'false') {
				config.SetAutoStart(false);
			}
			
			if (info.resourceType) {
				config.SetResourceType(info.resourceType);
			}
			return config;
		}
	}
}