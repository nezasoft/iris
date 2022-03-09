<!DOCTYPE html>
<html>

<head>
	<meta charset='UTF-8'>
	
	<title>CSS Tabs</title>
		
    <style>
        * { margin: 0; padding: 0; }
        #page-wrap { width: 960px; margin: 100px auto; }
        h1 { font: 36px Georgia, Serif; margin: 20px 0; }
        .group:after { visibility: hidden; display: block; font-size: 0; content: " "; clear: both; height: 0; }
        p { margin: 0 0 10px 0; }
        
        .tabs { list-style: none; }
        .tabs li { display: inline; }
        .tabs li a { color: black; float: left; display: block; padding: 4px 10px; margin-left: -1px; position: relative; left: 1px; background: white; text-decoration: none; }
        .tabs li a:hover { background: #ccc; }
        
        
        /* Generic styles & example one */
        
        .tabbed-area { margin: 0 0 120px 0; }
        .box-wrap { position: relative; min-height: 250px; }
        .tabbed-area div div { background: white; padding: 20px; min-height: 250px; position: absolute; top: -1px; left: 0; width: 100%; }
        .tabbed-area div div, .tabs li a { border: 1px solid #ccc; }
        #box-one:target, #box-two:target, #box-three:target { z-index: 1; }
        
        
        
        /* Stuff for example two */
        
        .cur-nav-fix { margin-top: 60px; }
        .cur-nav-fix .tabs { position: absolute; bottom: 100%; left: -1px; }
        .cur-nav-fix .tabs li a { background: -moz-linear-gradient(top, white, #eee); }
        #box-four { z-index: 1; }
        #box-four:target .tabs,
        #box-five:target .tabs,
        #box-six:target .tabs { z-index: 3; }
        #box-four:target, #box-five:target, #box-six:target { z-index: 2; }
        .cur-nav-fix .tabs li.cur a { border-bottom: 1px solid white; background: white; }
        
        
        /* Stuff for example three */
        
        .cur-nav-fix-2 .tabs li a { background: -moz-linear-gradient(top, white, #eee); }
        .cur-nav-fix-2 .tabs { z-index: 2; position: relative; }
        #box-seven:target .box-seven,
        #box-eight:target .box-eight,
        #box-nine:target .box-nine { z-index: 1; }
        #box-seven:target a[href="#box-seven"],
        #box-eight:target a[href="#box-eight"],
        #box-nine:target a[href="#box-nine"] { border-bottom: 1px solid white; background: white; }
        
        
        /* Stuff for example four */
        
        .active-test { padding-top: 40px; }
        .active-test .single-tab em { background: white; width: 50px; font-style: normal; position: absolute; bottom: 100%; text-decoration: none; color: black; border: 1px solid #ccc; padding: 5px 10px; }
        .active-test .single-tab span { position: absolute; top: -1px; left: 0; width: 100%; display: block; padding: 20px; border: 1px solid #ccc; min-height: 250px; background: white; }
        .active-test .single-tab:active em { background: #ccc; }
        .active-test .single-tab:active span, .active-test .single-tab:focus span { z-index: 1; }
        .tab-ten em { left: 0; }
        .tab-eleven em { left: 70px; }
        .tab-twelve em { left: 140px; }
        
        
        /* Stuff for example five */
        
        .adjacent { position: relative; margin-top: 50px; min-height: 300px; }
        .adjacent div { border: 1px solid #ccc; background: white; padding: 20px; min-height: 250px; position: absolute; top: -1px; left: 0; width: 100%; }
        .adjacent .tabs { position: absolute; bottom: 100%; left: 0; z-index: 2; }
        .adjacent .tabs li a { background: -moz-linear-gradient(top, white, #eee); }
        #box-thirteen:target,
        #box-fourteen:target,
        #box-fifteen:target { z-index: 1; }
        #box-thirteen:target ~ .tabs a[href='#box-thirteen'],
        #box-fourteen:target ~ .tabs a[href='#box-fourteen'],
        #box-fifteen:target ~ .tabs a[href='#box-fifteen'] { background: white; border-bottom: 1px solid white; }


        /* Stuff for example six */

        .w3c { min-height: 250px; position: relative; width: 100%; }
        .w3c > div { display: inline; }
        .w3c > div > a { margin-left: -1px; position: relative; left: 1px; text-decoration: none; color: black; background: white; display: block; float: left; padding: 5px 10px; border: 1px solid #ccc; border-bottom: 1px solid white; }
        .w3c > div:not(:target) > a { border-bottom: 0; background: -moz-linear-gradient(top, white, #eee); }	
        .w3c > div:target > a { background: white; }	
        .w3c > div > div { background: white; z-index: -2; left: 0; top: 30px; bottom: 0; right: 0; padding: 20px; border: 1px solid #ccc; }	
        .w3c > div:not(:target) > div { position: absolute }
        .w3c > div:target > div { position: absolute; z-index: -1; }
        
        
        /* Stuff for example seven - including conditionals below */
        
        #ie-test { position: relative; width: 100%; }
        #boxLinks { list-style: none; overflow: hidden; }
        #boxLinks li {  display: inline; }
        #boxLinks li a { padding: 5px 10px; color: black; text-decoration: none; border: 1px solid #ccc; float: left; display: block; margin-left: -1px; position: relative; left: 1px; }
        #boxLinks li a:hover { color: #fff; background: #000; }
        #box { height: 250px; border: 1px solid #ccc; overflow: hidden; padding: 0px 30px 0px 30px; position: relative; top: -1px; }
        .box { display: none; height: 250px; overflow: auto; display: block; position: relative; overflow-x: hidden; }
        #box1:target, #box2:target, #box3:target { display: block; }

    </style>
    
    <!--[if IE]>
    <style type="text/css">
        .box { display: block; }
        #box { overflow: hidden;position: relative; }
        b { position: absolute; top: 0px; right: 0px; width:1px; height: 251px; overflow: hidden; text-indent: -9999px; }
    </style>
    <![endif]-->

</head>
<body>

    		
    		<div class="tabbed-area cur-nav-fix">
        		
                <div class="box-wrap">
                
                	<div id="box-four">
                        <ul>
                            <li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</li>
                            <li>Aliquam tincidunt mauris eu risus.</li>
                            <li>Vestibulum auctor dapibus neque.</li>
                        </ul>
                      <?php
					  $u_type= $_GET['action'];
					  ?>
                        <ul class="tabs group">
                            <li <?php if($u_type=='new_user'){
								
								echo 'class="cur"';
								
							} ?>><a href="?account_type=admin&action=new_user#box-four">New User</a></li>
                            <li <?php if($u_type=='manage_users'){
								
								echo 'class="cur"';
								
							} ?> ><a  href="?account_type=admin&action=manage_users#box-five">Manage Users</a></li>
                            <li <?php if($u_type=='list_users'){
								
								echo 'class="cur"';
								
							} ?>><a href="?account_type=admin&action=list_users#box-six">List Users</a></li>
                        </ul>
                	</div>
                	
                	<div id="box-five">
                	    <p>Feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
                	
                	 
                	</div>
                	
                	<div id="box-six">
                	    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                	
                	</div>
                
                </div>
    		
    		</div>
</body>

