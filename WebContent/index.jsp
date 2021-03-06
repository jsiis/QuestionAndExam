<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>首页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/edua-icons.css">
<link rel="stylesheet" type="text/css" href="css/animate.min.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl.transitions.css">
<link rel="stylesheet" type="text/css" href="css/cubeportfolio.min.css">
<link rel="stylesheet" type="text/css" href="css/settings.css">
<link rel="stylesheet" type="text/css" href="css/bootsnav.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/loader.css">

<link rel="icon" href="images/favicon.png">

<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
<a href="#" class="scrollToTop"><i class="fa fa-angle-up"></i></a>
<!--Loader-->
<div class="loader">
  <div class="bouncybox">
      <div class="bouncy"></div>
    </div>
</div>

<div class="topbar">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="pull-left">
        <span class="info"><a href="#."> 有什么问题吗?</a></span>
        <span class="info"><i class="icon-phone2"></i>17600223924</span>
        <span class="info"><i class="icon-mail"></i>251098199@qq.com</span>
        </div>
        <!--
        	作者：251098199@qq.com
        	时间：2017-04-13
        	描述：class="social_top pull-right"
        -->
        <ul >
          <!--<li><a href="#."><i class="fa fa-facebook"></i></a></li>
          <li><a href="#."><i class="icon-twitter4"></i></a></li>
          <li><a href="#."><i class="icon-google"></i></a></li>
          <li><a href="#" title=""><img src="images/loginBtn.PNG" /></a></li>
          <li><a href="#" title=""><img src="images/registerBtn.PNG" /></a></li>-->
          <%if(session.getAttribute("user")==null){%>
	          <li style="float: right;margin-top: 5px;"><a href="login.html" title="">&nbsp;登陆&nbsp;</a>
	          <li style="float: right;margin-top: 5px;"><a href="user/toUserAdd" title="">&nbsp;注册&nbsp;</a>
          <%}else{ %>
 	          <li style="float: right;margin-top: 5px;"><a href="login.html" title="">&nbsp;重新登陆&nbsp;</a>
          <%} %>
        </ul>
      </div>
    </div>
  </div>
</div>

<!--Header-->
<header>
  <nav class="navbar navbar-default navbar-fixed white no-background bootsnav">
    <div class="container"> 
<!--        <div class="search_btn btn_common"><i class="icon-icons185"></i></div>
 -->      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
          <i class="fa fa-bars"></i>
        </button>
        <a class="navbar-brand" href="index.html"><img src="images/logo-white.png" alt="logo" class="logo logo-display">
        <img src="images/logo.png" class="logo logo-scrolled" alt="">
        </a>
      </div>
      <div class="collapse navbar-collapse" id="navbar-menu">
        <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOut">
			<li><a href="user/login">首页</a></li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" >测试</a>
				<ul class="dropdown-menu">
				  <li><a href="tests/tostudentTestInfo">测试</a></li>
				  <!-- <li><a href="shop_detail.html">个人练习</a></li> -->
				  <li><a href="score/studentSearchScore">成绩查询</a></li>
				</ul>
			</li>
			
			<% if(session.getAttribute("show")!=null&&session.getAttribute("show").equals(true)){ %>
			
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" >测试（教师）</a>
				<ul class="dropdown-menu">
					<li><a href="tests/getTestPaperInfos">试卷管理</a></li>
					<li><a href="score/searchScore">分数查询</a></li>
					<li><a href="score/mark">主观题判卷</a></li>
				</ul>
			</li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" >题库管理</a>
				<ul class="dropdown-menu">
				  <li><a href="storages/toStoShow">科目题库</a></li>
				  <li><a href="#">个人题库</a></li>
				</ul>
			</li>
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" >档案管理</a>
				<ul class="dropdown-menu">
				  <li><a href="file/filesCheck">档案复查</a></li>
				  <li><a href="file/filesUpdate">档案更正</a></li>
				</ul>
			</li>
			
			<li><a href="file/show">日志</a></li>
			<%} %>
			<li><a href="contact.html">联系我们</a></li>
        </ul>
      </div>
    </div>   
  </nav>
</header>


<!--Search  id="search"-->
<div >
  
  <!--
  	  <button type="button" class="close">×</button>

  	<form>
    <input type="search" value="" placeholder="搜索...."  required/>
    <button type="submit" class="btn btn_common blue">查询</button>
  </form>-->
</div>

<!--Slider-->
<section class="rev_slider_wrapper text-center">			
<!-- START REVOLUTION SLIDER 5.0 auto mode -->
  <div id="rev_slider" class="rev_slider"  data-version="5.0">
    <ul>	
    <!-- SLIDE  -->
      <li data-transition="fade">
        <!-- MAIN IMAGE -->
        <img src="images/banner1.jpg" alt="" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg">							
        <!-- LAYER NR. 1 -->
        <div class="tp-caption tp-resizeme" 							
        data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
        data-y="['326','270','270','150']" data-voffset="['0','0','0','0']"						
        data-responsive_offset="on"
        data-visibility="['on','on','on','on']"
        data-transform_idle="o:1;"
        data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" 
        data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
        data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"							 
        data-start="800"><h1>在线测试系统</h1>
        </div>
        <div class="tp-caption tp-resizeme" 							
        data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
        data-y="['380','340','300','350']" data-voffset="['0','0','0','0']"
        data-responsive_offset="on"
        data-visibility="['on','on','off','off']"
        data-transform_idle="o:1;"
        data-transform_in="opacity:0;s:1000;e:Power2.easeInOut;" 
        data-transform_out="opacity:0;s:1000;s:1000;"
        data-start="1500"><p>学海无涯 <br/> 勤勉为舟</p>
        </div>
        <div class="tp-caption  tp-resizeme" 							
        data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
        data-y="['450','390','350','250']" data-voffset="['0','0','0','0']"							
        data-responsive_offset="on"
        data-visibility="['on','on','on','on']"
        data-transform_idle="o:1;"
        data-transform_in="y:[-200%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
        data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
        data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
        data-mask_out="x:0;y:0;s:inherit;e:inherit;" 							 
        data-start="2000">
        <a href="#." class="border_radius btn_common white_border">个人事务</a>
        <a href="#." class="border_radius btn_common blue">测试</a>
        </div>
      </li>

      <li data-transition="fade">
        <img src="images/banner2.jpg"  alt="" data-bgposition="center center" data-bgfit="cover" data-bgparallax="10" class="rev-slidebg">							
        <div class="tp-caption tp-resizeme" 							
        data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
        data-y="['326','270','270','150']" data-voffset="['0','0','0','0']"						
        data-responsive_offset="on"
        data-visibility="['on','on','on','on']"
        data-transform_idle="o:1;"
        data-transform_in="z:0;rX:0;rY:0;rZ:0;sX:0.9;sY:0.9;skX:0;skY:0;opacity:0;s:1500;e:Power3.easeInOut;" 
        data-transform_out="y:[100%];s:1000;e:Power2.easeInOut;s:1000;e:Power2.easeInOut;" 
        data-mask_out="x:inherit;y:inherit;s:inherit;e:inherit;"							 
        data-start="800"><h1>采取第一步</h1>
        </div>
        <div class="tp-caption tp-resizeme" 							
        data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
        data-y="['380','340','300','350']" data-voffset="['0','0','0','0']"
        data-responsive_offset="on"
        data-visibility="['on','on','off','off']"
        data-transform_idle="o:1;"
        data-transform_in="opacity:0;s:1000;e:Power2.easeInOut;" 
        data-transform_out="opacity:0;s:1000;s:1000;" 
        data-start="1500"><p>你可以在这里寻找老师， <br/> 获取资源，在线测试等</p>
        </div>
        <div class="tp-caption  tp-resizeme" 							
        data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']"
        data-y="['450','390','350','250']" data-voffset="['0','0','0','0']"							
        data-responsive_offset="on"
        data-visibility="['on','on','on','on']"
        data-transform_idle="o:1;"
        data-transform_in="y:[-200%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;s:1500;e:Power3.easeInOut;" 
        data-transform_out="auto:auto;s:1000;e:Power3.easeInOut;" 
        data-mask_in="x:0px;y:0px;s:inherit;e:inherit;" 
        data-mask_out="x:0;y:0;s:inherit;e:inherit;" 							 
        data-start="2000">
        <a href="#." class="border_radius btn_common blue">个人事务</a>
        </div>
      </li>
    </ul>				
  </div><!-- END REVOLUTION SLIDER -->
</section>	


<!--ABout US-->
<section id="about" class="padding">
  <div class="container">
    <div class="row">
    <div class="icon_wrap padding-bottom-half clearfix">
      <div class="col-sm-4 icon_box text-center heading_space wow fadeInUp" data-wow-delay="300ms">
         <i class="icon-icons9"></i>
         <h4 class="text-capitalize bottom20 margin10">寻找伙伴</h4>
         <p class="no_bottom">远离那些总是打击你的人，寻找互相激励的伙伴</p>
      </div>
      <div class="col-sm-4 icon_box text-center heading_space wow fadeInUp" data-wow-delay="400ms">
         <i class="icon-icons9"></i>
         <h4 class="text-capitalize bottom20 margin10">寻找自己的老师</h4>
         <p class="no_bottom">你可以在这里找到自己的老师，或者发现新的老师</p>
      </div>
      <div class="col-sm-4 icon_box text-center heading_space wow fadeInUp" data-wow-delay="500ms">
         <i class="icon-icons20"></i>
         <h4 class="text-capitalize bottom20 margin10">完成事务</h4>
         <p class="no_bottom">老师可以发布通知，作业等，你可以在这里查看并完成</p>
      </div>
      <div class="col-sm-4 icon_box text-center heading_space wow fadeInUp" data-wow-delay="600ms">
         <i class="icon-globe"></i>
         <h4 class="text-capitalize bottom20 margin10">测试预览</h4>
         <p class="no_bottom">你可以在这里预览自己未来一段时间需要参加的测试</p>
      </div>
      <div class="col-sm-4 icon_box text-center heading_space wow fadeInUp" data-wow-delay="400ms">
         <i class="icon-layers"></i>
         <h4 class="text-capitalize bottom20 margin10">自主测试</h4>
         <p class="no_bottom">可以在这里进行自主测试，自己练习</p>
      </div>
      <div class="col-sm-4 icon_box text-center heading_space wow fadeInUp" data-wow-delay="500ms">
         <i class="icon-laptop"></i>
         <h4 class="text-capitalize bottom20 margin10">分享或发现资源</h4>
         <p class="no_bottom">你可以在这里发现，或者是分享一些资源</p>
      </div>
      </div>
    </div>
  </div> 
  <div class="container margin_top">
    <div class="row">
      <div class="col-md-7 col-sm-6 priorty wow fadeInLeft" data-wow-delay="300ms">
        <h2 class="heading bottom25">欢迎来到 Edua Theme <span class="divider-left"></span></h2>
        <p class="half_space">Edua是一个供师生共同使用的在线平台，可以在线测试、上传试题、发布考试、完成考试等操作</p>
        <p>题库的管理与维护、自动生成试卷、手工改动生成试卷、生成试卷和答案。
        	题库管理系统能够实现离散数学题库管理的信息化，规范化和试卷生成的自动化，并且在操作上实现简单、方便、快捷。</p>
        <div class="row">
          <div class="col-md-6">
            <div class="about-post"> 
            <a href="#." class="border_radius"><img src="images/hands.png" alt="hands"></a>
            <h4>互助共进</h4>
            <p>同行才能走的更远</p>
            </div>
            <div class="about-post">
            <a href="#." class="border_radius"><img src="images/awesome.png" alt="hands"></a>
            <h4>快乐学习</h4>
            <p>愉悦学习是最好的学习方式</p>
            </div>
          </div>
          <div class="col-md-6">
            <div class="about-post">
            <a href="#." class="border_radius"><img src="images/maintenance.png" alt="hands"></a>
            <h4>分享互惠</h4>
            <p>分享其实是对自己的一个极大的提升</p>
            </div>
            <div class="about-post">
            <a href="#." class="border_radius"><img src="images/home.png" alt="hands"></a>
            <h4>优秀师资</h4>
            <p>有一个人生导师是一件多么幸福的事</p>
            </div>
          </div>
        </div>
      </div>
      <div class="col-md-5 col-sm-6 wow fadeInRight" data-wow-delay="300ms">
         <img src="images/about.jpg" alt="our priorties" class="img-responsive" style="width:100%;">
      </div>
    </div>
  </div>
</section>
<!--ABout US-->


<!-- Courses -->
<section id="courses" class="padding parallax">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h2 class="heading heading_space wow fadeInDown">常用选项<span class="divider-left"></span></h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="slider_wrapper">
          <div id="course_slider" class="owl-carousel">
            <div class="item">
              <div class="image bottom20">
                <img src="images/course1.jpg" alt="Courses" class="img-responsive border_radius">
              </div>
              <h3 class="bottom15"><a href="course_detail.html">测试</a></h3>
              <p class="bottom15">我们提供最为完备的在线测试系统，自主测试或是集体测试</p>
              <a href="course_detail.html" class="btn_common blue border_radius">详情</a>
            </div>
            <div class="item">
              <div class="image bottom20">
                <img src="images/course2.jpg" alt="Courses" class="img-responsive border_radius">
              </div>
              <h3 class="bottom15"><a href="course_detail.html">资源</a></h3>
              <p class="bottom15">分享的过程，同时也是总结的过程，成长的过程</p>
              <a href="course_detail.html" class="btn_common blue border_radius">详情</a>
            </div>
            <div class="item">
              <div class="image bottom20">
                <img src="images/course3.jpg" alt="Courses" class="img-responsive border_radius">
              </div>
              <h3 class="bottom15"><a href="course_detail.html">伙伴</a></h3>
              <p class="bottom15">尤其重要的事情之一就是：找到自己真正的伙伴，并且与之同行</p>
              <a href="course_detail.html" class="btn_common blue border_radius">详情</a>
            </div>
            <div class="item">
              <div class="image bottom20">
                <img src="images/course1.jpg" alt="Courses" class="img-responsive border_radius">
              </div>
              <h3 class="bottom15"><a href="course_detail.html">测试</a></h3>
              <p class="bottom15">我们提供最为完备的在线测试系统，自主测试或是集体测试</p>
              <a href="course_detail.html" class="btn_common blue border_radius">详情</a>
            </div>
            <div class="item">
              <div class="image bottom20">
                <img src="images/course2.jpg" alt="Courses" class="img-responsive border_radius">
              </div>
              <h3 class="bottom15"><a href="course_detail.html">资源</a></h3>
              <p class="bottom15">分享的过程，同时也是总结的过程，成长的过程</p>
              <a href="course_detail.html" class="btn_common blue border_radius">详情</a>
            </div>
            <div class="item">
              <div class="image bottom20">
                <img src="images/course3.jpg" alt="Courses" class="img-responsive border_radius">
              </div>
              <h3 class="bottom15"><a href="course_detail.html">伙伴</a></h3>
              <p class="bottom15">尤其重要的事情之一就是：找到自己真正的伙伴，并且与之同行</p>
              <a href="course_detail.html" class="btn_common blue border_radius">详情</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Courses -->




<!--Fun Facts
<section id="facts" class="padding">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center wow fadeInDown">
       <h2 class="heading">Education Theme<span class="divider-center"></span></h2>
       <p class="heading_space margin10">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
      </div>
    </div>
    <div class="row number-counters">
      <div class="col-md-2 col-sm-4">
        <div class="counters-item">
        <i class="icon-checkmark3"></i>
        <strong data-to="1235">0</strong>
       
        <p>Project Completed</p>
        </div>
        <div class="counters-item last">
        <i class="icon-trophy"></i>
        <strong data-to="78">0</strong>
        <p>Awards Won</p>
        </div>
      </div>
      <div class="col-md-7 col-sm-4">
        <div class="fact-image">
        <img src="images/fun-facts.png" alt=" some facts" class="img-responsive">
        </div>
      </div>
      <div class="col-md-3 col-sm-4">
       <div class="counters-item">
        <i class=" icon-icons20"></i>
        <strong data-to="186">0</strong>
        <p>Hours of Work / Month</p>
        </div>
        <div class="counters-item last">
        <i class="icon-happy"></i>
        <strong data-to="89">0</strong>
        <p>Satisfied Clients</p>
        </div>
      </div>
    </div>
  </div>
</section>
-->
<!--Customers Review
<section id="reviews" class="padding bg_light">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center wow fadeInDown">
      <h2 class="heading heading_space">What People say <span class="divider-center"></span></h2>
      <div id="review_slider" class="owl-carousel text-center">
        <div class="item">
          <h4>John Smith</h4>
          <p>Ditector Shangha</p>
          <img src="images/customer1.png" class="client_pic border_radius" alt="costomer">
          <p>I've been happy with the services provided by Edua LLC. Scooter Libby has been wonderful! He has returned my calls quickly, and he answered all my questions. This is required when, for example, the final text is not yet available. We are here to help you from the initial phase to the final Edua phase.</p>
        </div>
        <div class="item">
           <h4>John Smith</h4>
          <p>Ditector Shangha</p>
          <img src="images/customer1.png" class="client_pic border_radius" alt="costomer">
          <p>I've been happy with the services provided by Edua LLC. Scooter Libby has been wonderful! He has returned my calls quickly, and he answered all my questions. This is required when, for example, the final text is not yet available. We are here to help you from the initial phase to the final Edua phase.</p>
        </div>
        <div class="item">
           <h4>John Smith</h4>
          <p>Ditector Shangha</p>
          <img src="images/customer1.png" class="client_pic border_radius" alt="costomer">
          <p>I've been happy with the services provided by Edua LLC. Scooter Libby has been wonderful! He has returned my calls quickly, and he answered all my questions. This is required when, for example, the final text is not yet available. We are here to help you from the initial phase to the final Edua phase.</p>
        </div>
       </div>
      </div>
    </div>
  </div>
</section>
-->



<!--Pricings
<section class="padding" id="pricing">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center wow fadeInDown">
        <h2 class="heading">Pricing Tables <span class="divider-center"></span></h2>
        <p class="heading_space margin10">Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
      </div>
      <div class="col-md-12">
        <div class="pricing">
          <div class="pricing_item wow fadeInUp" data-wow-delay="300ms">
            <h3>Basic</h3>
            <div class="pricing_price"><span class="pricing_currency">$</span>9.90</div>
            <p class="pricing_sentence">Perfect for single freelancers who work by themselves</p>
            <ul class="pricing_list">
              <li class="pricing_feature">Support forum</li>
              <li class="pricing_feature">Free hosting</li>
              <li class="pricing_feature">40MB of storage space</li>
              <li>Social media integration</li>
              <li>1GB of storage space</li>
            </ul>
            <a class="btn_common text-center" href="#.">Choose plan</a>
          </div>
          <div class="pricing_item active wow fadeInUp" data-wow-delay="400ms">
            <h3>Popular</h3>
            <div class="pricing_price"><span class="pricing_currency">$</span>29,90</div>
            <p class="pricing_sentence">Suitable for small businesses with up to 5 employees</p>
            <ul class="pricing_list">
              <li class="pricing_feature">Unlimited calls</li>
              <li class="pricing_feature">Free hosting</li>
              <li class="pricing_feature">10 hours of support</li>
              <li class="pricing_feature">Social media integration</li>
              <li class="pricing_feature">1GB of storage space</li>
            </ul>
            <a class="btn_common text-center" href="#.">Choose plan</a>
          </div>
          <div class="pricing_item dark_gray wow fadeInUp" data-wow-delay="500ms">
            <h3>Premier</h3>
            <div class="pricing_price"><span class="pricing_currency">$</span>59,90</div>
            <p class="pricing_sentence">Great for large businesses with more than 5 employees</p>
            <ul class="pricing_list">
              <li class="pricing_feature">Unlimited calls</li>
              <li class="pricing_feature">Free hosting</li>
              <li class="pricing_feature">Unlimited hours of support</li>
              <li class="pricing_feature">Social media integration</li>
              <li class="pricing_feature">Unlimited storage space</li>
            </ul>
            <a class="btn_common text-center" href="#.">Choose plan</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
-->
<!--Pricings-->


<!--Paralax 
<section id="parallax" class="parallax">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center wow bounceIn">
       <h2>We Believe that Education for Everyone Since</h2>
       <h1 class="margin10">1942</h1>
       <a href="#." class="border_radius btn_common white_border margin10">Gaet a Quote</a>
      </div>
    </div>
  </div>
</section>
-->
<!--Paralax -->


<!-- News
<section id="news" class="padding">
  <div class="container">
    <div class="row">
      <div class="col-md-12 wow fadeInDown">
       <h2 class="heading heading_space">Latest News <span class="divider-left"></span></h2>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
        <div class="slider_wrapper">
          <div id="news_slider" class="owl-carousel">
            <div class="item">
              <div class="content_wrap">
                <div class="image">
                  <img src="images/news1.jpg" alt="Edua" class="img-responsive border_radius">
                </div>
                <div class="news_box border_radius">
                  <h4><a href="blog_detail.html">4 Springtime Color Schemes to Try at Home</a></h4>
                  <ul class="commment">
                    <li><a href="#."><i class="icon-icons20"></i>June 6, 2016</a></li>
                    <li><a href="#."><i class="icon-comment"></i> 02</a></li>
                  </ul>
                  <p>We offer the most complete house Services in the country...</p>
                  <a href="blog_detail.html" class="readmore">详情</a>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content_wrap">
                <div class="image">
                  <img src="images/news2.jpg" alt="Edua" class="img-responsive border_radius">
                </div>
                <div class="news_box border_radius">
                  <h4><a href="blog_detail.html"> Springtime Color Schemes to Try at Home</a></h4>
                  <ul class="commment">
                    <li><a href="#."><i class="icon-icons20"></i>June 6, 2016</a></li>
                    <li><a href="#."><i class="icon-comment"></i> 02</a></li>
                  </ul>
                  <p>We offer the most complete house Services in the country...</p>
                  <a href="blog_detail.html" class="readmore">详情</a>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content_wrap">
                <div class="image">
                  <img src="images/news3.jpg" alt="Edua" class="img-responsive border_radius">
                </div>
                <div class="news_box border_radius">
                  <h4><a href="blog_detail.html">4 Springtime Color Schemes to Try at Home</a></h4>
                  <ul class="commment">
                    <li><a href="#."><i class="icon-icons20"></i>June 6, 2016</a></li>
                    <li><a href="#."><i class="icon-comment"></i> 02</a></li>
                  </ul>
                  <p>We offer the most complete house Services in the country...</p>
                  <a href="blog_detail.html" class="readmore">详情</a>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content_wrap">
                <div class="image">
                  <img src="images/news1.jpg" alt="Edua" class="img-responsive border_radius">
                </div>
                <div class="news_box border_radius">
                  <h4><a href="blog_detail.html">4 Springtime Color Schemes to Try at Home</a></h4>
                  <ul class="commment">
                    <li><a href="#."><i class="icon-icons20"></i>June 6, 2016</a></li>
                    <li><a href="#."><i class="icon-comment"></i> 02</a></li>
                  </ul>
                  <p>We offer the most complete house Services in the country...</p>
                  <a href="blog_detail.html" class="readmore">详情</a>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content_wrap">
                <div class="image">
                  <img src="images/news2.jpg" alt="Edua" class="img-responsive border_radius">
                </div>
                <div class="news_box border_radius">
                  <h4><a href="blog_detail.html">4 Springtime Color Schemes to Try at Home</a></h4>
                  <ul class="commment">
                    <li><a href="#."><i class="icon-icons20"></i>June 6, 2016</a></li>
                    <li><a href="#."><i class="icon-comment"></i> 02</a></li>
                  </ul>
                  <p>We offer the most complete house Services in the country...</p>
                  <a href="blog_detail.html" class="readmore">详情</a>
                </div>
              </div>
            </div>
            <div class="item">
              <div class="content_wrap">
                <div class="image">
                  <img src="images/news3.jpg" alt="Edua" class="img-responsive border_radius">
                </div>
                <div class="news_box border_radius">
                  <h4><a href="blog_detail.html">4 Springtime Color Schemes to Try at Home</a></h4>
                  <ul class="commment">
                    <li><a href="#."><i class="icon-icons20"></i>June 6, 2016</a></li>
                    <li><a href="#."><i class="icon-comment"></i> 02</a></li>
                  </ul>
                  <p>We offer the most complete house Services in the country...</p>
                  <a href="blog_detail.html" class="readmore">详情</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
-->


<!--FOOTER-->
<!-- <footer class="padding-top">
  <div class="container">
    <div class="row">
      <div class="col-md-4 col-sm-4 footer_panel bottom25">
        <h3 class="heading bottom25">关于我们<span class="divider-left"></span></h3>
        <a href="index.html" class="footer_logo bottom25"><img src="images/logo-white.png" alt="Edua"></a>
        <p>我们致力于提供完善的在线题库管理系统，测试系统。致力于设计跨平台的响应式页面；未来还会实现数据的相应。</p>
        <ul class="social_icon top25">
          <li><a href="#." class="facebook"><i class="fa fa-facebook"></i></a></li>
          <li><a href="#." class="twitter"><i class="icon-twitter4"></i></a></li>
          <li><a href="#." class="dribble"><i class="icon-dribbble5"></i></a></li>
          <li><a href="#." class="instagram"><i class="icon-instagram"></i></a></li>
          <li><a href="#." class="vimo"><i class="icon-vimeo4"></i></a></li>
        </ul>
      </div>
      <div class="col-md-4 col-sm-4 footer_panel bottom25">
        <h3 class="heading bottom25">快速链接<span class="divider-left"></span></h3>
        <ul class="links">
          <li><a href="#."><i class="icon-chevron-small-right"></i>首页</a></li>
          <li><a href="#."><i class="icon-chevron-small-right"></i>团队</a></li>
          <li><a href="#."><i class="icon-chevron-small-right"></i>服务</a></li>
          <li><a href="#."><i class="icon-chevron-small-right"></i>历史</a></li>
          <li><a href="#."><i class="icon-chevron-small-right"></i>个人主页</a></li>
          <li><a href="#."><i class="icon-chevron-small-right"></i>个人博客</a></li>
        </ul>
      </div>
      <div class="col-md-4 col-sm-4 footer_panel bottom25">
        <h3 class="heading bottom25">联系我们 <span class="divider-left"></span></h3>
        <p class=" address"><i class="icon-map-pin"></i>北京市海淀区西二旗，名白工作组</p>
        <p class=" address"><i class="icon-phone"></i>17600223924</p>
        <p class=" address"><i class="icon-mail"></i><a href="mailto:Edua@info.com">25109199@qq.com</a></p>
        <img src="images/footer-map.png" alt="we are here" class="img-responsive">
      </div>
    </div>
  </div>
</footer> -->
<div class="copyright">
  <div class="container">
    <div class="row">
      <div class="col-md-12 text-center">
        <p>名白工作室制作&nbsp;&nbsp;提供各种软件服务</p>
        <p>..</p>
      </div>
    </div>
        <div class="row">
      <div class="col-md-12 text-center">
        <p class=" address">联系方式：&nbsp;<i class="icon-phone"></i>17600223924
        	&nbsp;&nbsp;&nbsp;&nbsp;<i class="icon-mail"></i><a href="mailto:Edua@info.com">25109199@qq.com</a>
        </p>
       
      </div>
    </div>
  </div>
</div>
<!--FOOTER ends-->



<script src="js/jquery-2.2.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootsnav.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/jquery-countTo.js"></script>
<script src="js/jquery.parallax-1.1.3.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.cubeportfolio.min.js"></script>
<script src="js/jquery.themepunch.tools.min.js"></script>
<script src="js/jquery.themepunch.revolution.min.js"></script>
<script src="js/revolution.extension.layeranimation.min.js"></script>
<script src="js/revolution.extension.navigation.min.js"></script>
<script src="js/revolution.extension.parallax.min.js"></script>
<script src="js/revolution.extension.slideanims.min.js"></script>
<script src="js/revolution.extension.video.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/functions.js"></script>

</body>
</html>
