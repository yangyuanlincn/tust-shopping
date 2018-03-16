if(window.localStorage){
	var  local={
			Set:function(key ,data){
				if (key != "") {
		            if (data) {
		                var lsobj = window.localStorage;
		                var datajson = JSON.stringify(data);
		                lsobj.setItem(key, datajson);
		            }
        		}
				
			},
			Get:function(key ,data ){
				if (key != "") {
		            var data = null;
		            var lsdata = window.localStorage;
		            try {
		                var datajson = lsdata.getItem(key);
		                datajson = JSON.parse(datajson);
		                data = datajson;
		            } catch (e) {
		
		            } finally {
		                return data;
		            }
       			}
			},
			//返回数组
			Append:function(key ,data){
				
				if(!window.localStorage.getItem(key)){
					var arr=new Array();
					arr.push(data);
					this.Set(key ,arr);
				}else{
					//不空
					var lsdata = window.localStorage;
					var datajson = lsdata.getItem(key);
		            datajson = JSON.parse(datajson);
		        	 if(datajson instanceof Array){
		            	datajson.push(data);
		            	this.Set(key,datajson);
		            }
		            
				}
			},
			
			Clear:function(){
				window.localStorage.clear();
			},
			Remove:function(key){
				window.localStorage.removeItem(key);
			}
		
	};
	
}else{
	alert("抱歉，您的浏览器不支持localStorage");
}


function request(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if (r != null)
		return decodeURI(r[2]);
	return null;
};
