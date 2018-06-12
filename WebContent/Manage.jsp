<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<style>
		#header {
		    background-color:#363a45;
		    color:white;
		    text-align:center;
		    padding:5px;
		}
		#nav {
		    line-height:30px;
		    background-color:#363a45;
		    height:525px;
		    width:255px;
		    float:left;
		    padding:5px;	      
		}
		#section {
		    width:1064px;
		    float:left;
		   	height:515px;
		    padding:10px;	 	 
		}
		
		#footer {
		    background-color:black;
		    color:white;
		    clear:both;
		    text-align:center;
		   	padding:5px;	 	 
		}     
        #nav>ul{
            background-color: gray;
            padding-left: 50px;
        }
        #nav>ul>li{
            float: left;
            padding: 5px;
            border-left: solid 1px black;
            position: relative;
            cursor: pointer;
        }
        #nav>ul>li:hover ul{
            display: block;
        }
        #nav ul li ul{
            position: absolute;
            display: none;
            background-color: #ccc;
            left:0;
            top: 100%;
        }
        #nav ul li ul li{
            padding: 5px;
            cursor: pointer;
        }
        
        
        #openXT{
		width:330px;
		    float:left;
		   	height:105px;
		    padding:10px;
		    background-color:red;
		    
		}
		#inXT{
		width:330px;
		    float:left;
		   	height:105px;
		    padding:10px;
		    background-color:blue;
		}
		#closeXT{
		width:330px;
		    float:right;
		   	height:105px;
		    padding:10px;
		    background-color:orange;
		}
		</style>
		
		<script src="js/adapter.js"></script> <!--rem适配js-->

	<link rel="stylesheet" href="css/base.css"> <!--初始化文件-->
	<link rel="stylesheet" href="css/menu.css"> <!--主样式-->
		
		
		
</head>
<body>	
	<div id="header">
		<h1>欢迎进入光交箱管控平台</h1>
		</div>
		
		
		<div id="nav">
		<div id="menu">
    

    <!--显示菜单-->
    <div id="open">
        
        <div class="navBox">
            <ul>
                <li>
                    <h2 class="obtain">首页<i></i></h2>                   
                </li>
                <li>
                    <h2 class="obtain">监控中心<i></i></h2>
                    <div class="secondary">
                        <h3><a style='color:white' href="/LightBox/Map.jsp">
                        	地图显示
                        	</a>
                        	</h3>                        
                    </div>
                </li>
                <li>
                    <h2 class="obtain">设备管理<i></i></h2>
                    <div class="secondary">
                        <h3> <a style='color:white' href="/LightBox/XTinfo/CXTinfo.jsp">
                        	箱体信息
                        	</a>
                        	</h3>
                        <h3><a style='color:white' href="/LightBox/XTcommunicate/CXTcommunicate.jsp">
                        	箱体通讯
                        	</a>
                        	</h3>
                        <h3><a style='color:white' href="/LightBox/NewXT/CNewXT.jsp">
                        	新建设备
                        	</a>
                        	</h3>                        
                    </div>
                </li>
                <li>
                    <h2 class="obtain">施工方管理<i></i></h2>
                    <div class="secondary">
                        <h3><a style='color:white' href="/LightBox/Secondinfo/Csecondinfo.jsp">
                        	施工方基本信息
                        	</a>
                            </h3>
                        <h3><a style='color:white' href="/LightBox/OperateHistory/Coperatehis.jsp">
                        	操作历史
                        	</a>
                        	</h3>                        
                    </div>
                </li>
                <li>
                    <h2 class="obtain">用户中心<i></i></h2>
                    <div class="secondary">
                        <h3><a style='color:white' href="/LightBox/Firstinfo/CFirstinfo.jsp">
                        	员工信息
                        	</a>
                        	</h3>
                        <h3><a style='color:white' href="/LightBox/Duty/CDuty.jsp">
                        	值班记录
                        	</a>
                        	</h3>                        
                    </div>
                </li>
                <li>
                    <h2 class="obtain">远程开锁<i></i></h2>                   
                </li>
                <li>
                    <h2 class="obtain">押金管理<i></i></h2>
                    <div class="secondary">
                        <h3><a style='color:white' href="/LightBox/Cash/CCash.jsp">
                        	押金表
                        	</a></h3>                 
                    </div>
                </li>
                <li>
                    <h2 class="obtain">手机端<i></i></h2>                    
                </li>
            </ul>
        </div>
    </div>
</div>


<script src="js/menu.js"></script> <!--控制js-->

		</div>
	
		
<div id="section" >
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=IDvNBsejl9oqMbPF316iKsXR"></script>
<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
 <div style="min-height: 400px; width: 101%; margin:0px" id="map">
            </div>
            <script type="text/javascript">
                var markerArr = [
                    { title: "名称：小寨", point: "108.953196,34.229055", address: "陕西省西安市小寨", tel: "029" },
                    { title: "名称：西安建筑科技大学", point: "108.972648,34.245344", address: "陕西省西安建筑科技大学", tel: "029" },
                    { title: "名称：西安科技大学研究生院", point: "108.969414,34.240478", address: "陕西省西安科技大学研究生院", tel: "029" },
                    { title: "名称：省图书馆", point: "108.951994,34.23783", address: "陕西省图书馆", tel: "029" }
                ];
                function map_init() {
                    var map = new BMap.Map("map"); // 创建Map实例
                    var point = new BMap.Point(108.953196,34.229055); //地图中心点，西安市
                    map.centerAndZoom(point, 14); // 初始化地图,设置中心点坐标和地图级别。
                    map.enableScrollWheelZoom(true); //启用滚轮放大缩小
                    // 添加带有定位的导航控件
  				var navigationControl = new BMap.NavigationControl({
  			  // 靠左上角位置
   				 anchor: BMAP_ANCHOR_TOP_LEFT,
    		// LARGE类型
   			 type: BMAP_NAVIGATION_CONTROL_LARGE,
   			 // 启用显示定位
   			 enableGeolocation: true
  			});
  			map.addControl(navigationControl);
  			// 添加定位控件
 		 	var geolocationControl = new BMap.GeolocationControl();
  			geolocationControl.addEventListener("locationSuccess", function(e){
    		// 定位成功事件
   		 	var address = '';
    		address += e.addressComponent.province;
    		address += e.addressComponent.city;
   	 		address += e.addressComponent.district;
    		address += e.addressComponent.street;
    		address += e.addressComponent.streetNumber;
    		alert("当前定位地址为：" + address);
  			});
  			geolocationControl.addEventListener("locationError",function(e){
    		// 定位失败事件
    		alert(e.message);
  			});
  			map.addControl(geolocationControl);
         
                    var point = new Array(); //存放标注点经纬信息的数组
                    var marker = new Array(); //存放标注点对象的数组
                    var info = new Array(); //存放提示信息窗口对象的数组
                    var searchInfoWindow =new Array();//存放检索信息窗口对象的数组
                    for (var i = 0; i < markerArr.length; i++) {
                        var p0 = markerArr[i].point.split(",")[0]; //
                        var p1 = markerArr[i].point.split(",")[1]; //按照原数组的point格式将地图点坐标的经纬度分别提出来
                        point[i] = new window.BMap.Point(p0, p1); //循环生成新的地图点
                        marker[i] = new window.BMap.Marker(point[i]); //按照地图点坐标生成标记
                        map.addOverlay(marker[i]);
                        //marker[i].setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
                        //显示marker的title，marker多的话可以注释掉
                        var label = new window.BMap.Label(markerArr[i].title, { offset: new window.BMap.Size(20, -10)});
                        marker[i].setLabel(label);
                        // 创建信息窗口对象
                        info[i] = "<p style=’font-size:12px;lineheight:1.8em;’>" + "</br>地址：" + markerArr[i].address + "</br> 电话：" + markerArr[i].tel + "</br></p>";
                        //创建百度样式检索信息窗口对象                       
                        searchInfoWindow[i] = new BMapLib.SearchInfoWindow(map, info[i], {
                                title  : markerArr[i].title,      //标题
                                width  : 290,             //宽度
                                height : 55,              //高度
                                panel  : "panel",         //检索结果面板
                                enableAutoPan : true,     //自动平移
                                searchTypes   :[
                                    BMAPLIB_TAB_TO_HERE,  //到这里去
                                    BMAPLIB_TAB_FROM_HERE //从这里出发
                                ]
                            });
                        //添加点击事件
                        marker[i].addEventListener("click", 
                            (function(k){
                                // js 闭包
                                return function(){
                                    //将被点击marker置为中心
                                    //map.centerAndZoom(point[k], 18);
                                    //在marker上打开检索信息窗口
                                    searchInfoWindow[k].open(marker[k]);
                                }
                            })(i)                            
                        ); 
                    }                  
                }
                //异步调用百度js
                function map_load() {
                    var load = document.createElement("script");
                    load.src = "http://api.map.baidu.com/api?v=2.0&ak=IDvNBsejl9oqMbPF316iKsXR&callback=map_init";
                    document.body.appendChild(load);
                }
                window.onload = map_load;
                
             
            </script>
            
            <div id="openXT">
            	开箱队列
            </div>
            <div id="inXT">
            	已开箱队列
            </div>
            <div id="closeXT">
            	关箱队列
            </div>
</div>

</body>
</html>