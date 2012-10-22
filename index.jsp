<%-- JSP directive --%>
<%@ page import="java.net.*, java.io.*, java.util.*, java.servlet.*, java.servlet.http.*"
%>

<%
	//if page is being accessed by HTTPS, then redirect user to check.jsp
	
	if ((String) request.getAttribute("javax.servlet.request.ssl_session") != null	){
		String redirectURL = "https://eidtsttom.pmlp.gov.lv/check.jsp";
		response.sendRedirect(redirectURL);
	}
%>


<%!

//checkBrowser helper function
public boolean contains(String needle,  String haystack ) {
  haystack = haystack == null ? "" : haystack;
  needle = needle == null ? "" : needle;
  return haystack.toLowerCase().contains( needle.toLowerCase() );
}
 
//checks for allowed browser
public boolean checkBrowser(String agent){
	 
	 Boolean goodBrowser = true;
	 
	 if( contains( "Firefox", agent ) ) {
	  goodBrowser = false;
	 }

	  if( contains( "Opera", agent ) ) {
	   goodBrowser = false;
	 }
	 
	 return goodBrowser;
} 
 
%>

<!DOCTYPE html>
<html lang="lv">
  <head>
    <meta charset="utf-8">
    <title>eID | eID pārbaudes vietne</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link href="../assets/css/bootstrap.css" rel="stylesheet">
    <style>
      body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
      }
    </style>
    <link href="../assets/css/bootstrap-responsive.css" rel="stylesheet">

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
  </head>

  <body>

    <div class="navbar navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="http://eidtsttom.pmlp.gov.lv">eID</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="http://eidtsttom.pmlp.gov.lv">Home</a></li>
             
              
            </ul>
			</div>
			<div class="nav-collapse"style="float:right">
				<ul class="nav">
				 <li class="active">
				 <a href="http://eidtsttom.pmlp.gov.lv">LV</a>
				</li>
				 <li><a href="/en">EN</a></li>
				 </ul>
          </div><!--/.nav-collapse -->
        </div>
        </div>
   
      </div>

    <div class="container">
	<div style="padding-top:30px; padding-bottom:30px;" class="hero-unit">
	<img style="float:left; margin-top:-5px; margin-left:10px; margin-right:20px;" src='/assets/img/eID_logo_short.png'>
     
    
      <h1>eID pārbaudes vietne</h1>
      <p>Esi sveicināts eID pārbaudes vietnē!</p>
   
      </div>
      
	 
      <div class="marketing">
	   <div style="text-align: center;" class="marketing">
      	   <div class="row-fluid">
					 <div 
					   style=" 
					   box-shadow: 40px 0 0 #FBFBFC inset, 41px 0 0 #ECECF0 inset; 
					   background-color: #F7F7F9; 
					   border: 1px solid #E1E1E8;
					   padding: 8px;
					   border-radius: 4px 4px 4px 4px;
					   " 
					 class="span4">	
					   <i style="float:left; margin-left:5px;" class="icon-exclamation-sign"></i> 
					<p style="margin-left:40px; text-align: left;">
					 eID jeb personas apliecība ir <a href="http://www.likumi.lv/doc.php?id=243484"> personu apliecinošs dokuments </a>, kas Tev ļauj apliecināt savu identitāti (autentificēties) elektroniskā vidē – internetā, <br>
						   kā arī elektroniski parakstīt dokumentus.<br>
						   Lai uzzinātu vairāk par, eID spied <a href="http://www.pmlp.gov.lv/lv/pakalpojumi/passes/eid.html">šeit</a>.<br><br>
						   </p>
						   </div>
					  <div 
					   style=" 
					   box-shadow: 40px 0 0 #FBFBFC inset, 41px 0 0 #ECECF0 inset; 
					   background-color: #F7F7F9; 
					   border: 1px solid #E1E1E8;
					   padding: 8px;
					   border-radius: 4px 4px 4px 4px;
					   " 
					  class="span4">	
						 <i style="float:left; margin-left:5px;" class="icon-exclamation-sign"></i>
						 <p style="margin-left:40px; text-align: left;">  
						 Lai pilnvērtīgi izmantotu eID sniegtās iespējas, Tev nepieciešams:<br>
								1. dators ar interneta pieslēgumu;<br>
								2. datoram pievienots <a href="http://www.pmlp.gov.lv/lv/pakalpojumi/passes/eid_lasitaji.html"> viedkaršu lasītājs</a>;<br>
								3. uzinstalēta eID <a href="http://www.pmlp.gov.lv/lv/pakalpojumi/passes/eid_atbalsts.html"> starpprogrammatūra.</a><br><br>
						</p>
						</div>
					   <div 
					   style=" 
					   box-shadow: 40px 0 0 #FBFBFC inset, 41px 0 0 #ECECF0 inset; 
					   background-color: #F7F7F9; 
					   border: 1px solid #E1E1E8;
					   padding: 8px;
					   border-radius: 4px 4px 4px 4px;
					   " 
					   class="span4">
						  <i style="float:left; margin-left:5px;" class="icon-exclamation-sign"></i>
					   <p style="margin-left:40px; text-align: justify;">  
						Lai pārbaudītu Tavu identitāti, programmatūra Tev lūgs izvēlēties autentifikācijas sertifikātu (ja šajā brīdi Tavam datoram ir pieslēgta tikai viena viedkarte – eID, vienkārši spied OK)
						un ievadīt PIN1, kuru atradīsi kopā ar eID saņemtajā <a href="http://www.pmlp.gov.lv/lv/pakalpojumi/passes/PIN_maina.html"> PIN aploksnē </a>(ja neesi paguvis to nomainīt). <br>
						</p>
						</div>
	</div>
	
      <p>
      	
		<%
		 //check for allowed browser
		 String agent = request.getHeader("USER-AGENT");		 
		 if( checkBrowser(agent)) {
		%>
		<div style="margin-top:15px" class="row-fluid">
			<div style="background-color: #F7F7F9;  border: 1px solid #E1E1E8;  padding: 8px; border-radius: 4px 4px 4px 4px;" class="span5">
					<img style="float:right; margin-top:15px; margin-right:-35px;" src="/assets/img/arrow2.png">
					<p style="margin-right:40px; text-align: right;">
						<br>Spied šeit, lai pārliecinātos, ka esi pareizi sagatavojis savu datoru darbam ar eID, un Tavs eID darbojas korekti!
					</p>
				</div>
				<div style="padding: 8px; border-radius: 4px 4px 4px 4px;" class="span2">              
					<a href="https://eidtsttom.pmlp.gov.lv/" class="btn btn-block btn-large"><img style="float:left; width:120px; margin-right:5px" src="/assets/img/eID_logo.png"></a>
				</div>
				<div style="background-color: #F7F7F9; border: 1px solid #E1E1E8; padding: 8px; border-radius: 4px 4px 4px 4px;" class="span5">
						<img style="float:left; margin-top:15px; margin-left:-35px;" src="/assets/img/arrow1.png">
					<p style="margin-left:40px; text-align: justify;"> 
						<br>Šajā brīdī Tavam eID ir jābūt ievietotam viedkaršu lasītājā!<br><br>
					</p>
				</div>
		</div>		
		<%
		 } else {
		%>
		<div class='alert alert-error'> Kļūda! Pārbaude ir iespējama tikai, izmantojot Internet Explorer, Chrome vai Safari pārlūkprogrammu.</div>
		<%   
		 }
		 
		%>
		
      </p>
      
     
      <hr/>
	  </div>
	  <div style="margin-top:20px" class="row">
	  <div 
	   style=" 
   box-shadow: 40px 0 0 #FBFBFC inset, 41px 0 0 #ECECF0 inset; 
   background-color: #F7F7F9; 
   border: 1px solid #E1E1E8;
   padding: 8px;
   border-radius: 4px 4px 4px 4px;
   " 
	  class="span10 offset1">
	     <i style="float:left; margin-left:5px;" class="icon-bell"></i>
   <div style="margin-left:40px; text-align: justify;">  
       <h2>Izstrādātājiem</h2>
	   <p> Ja esi pakalpojumu sniedzējs, kas vēlas eID izmantot, lai savā pakalpojumu portālā internetā pārliecinātos par klientu identitāti, vai izstrādātājs, kam jānodrošina tehniskais risinājums klientu autentifikācijai internetā, spied šeit, 
	   lai iegūtu pamatinformāciju par dažādu web serveru konfigurēšanu darbam ar eID. Papildus informāciju pieprasi <a href="mailto:eID@pmp.gov.lv">šeit </a></p>
	   Citas eID pārbaudes vietnes izstrādātājiem:<br>
	   <a href="http://eidtstiis.pmlp.gov.lv">eID Autentifikācijas integrācijas piemērs izmantojot Microsoft IIS</a><br>
	   <a href="http://eidtstapa.pmlp.gov.lv">eID Autentifikācijas integrācijas piemērs izmantojot Apache</a><br><br>
	   Programmatūras kods, kas tiek izmantots šajā un citās integrācijas piemēru lapās ir pieejams GitHub vietnē šeit: <a href="https://github.com/eID-LV">https://github.com/eID-LV</a><br>
	   Dokumentācija integrācijas piemēriem pieejama šeit: <br>
	   -  <a href="http://eidtstiis.pmlp.gov.lv/eID_Apache.pdf">Dokumentācija integrācijas piemēram izmantojot Apache</a>;<br>
	   -  <a href="http://eidtstiis.pmlp.gov.lv/eID_IIS.pdf">Dokumentācija integrācijas piemēram izmantojot Microsoft IIS</a>;<br>
	   -  <a href="http://eidtstiis.pmlp.gov.lv/eID_Tomcat.pdf">Dokumentācija integrācijas piemēram izmantojot Apache Tomcat</a><br><br>
	      <p> Lejuplādēt eID logo iespējams šeit: <a href="/assets/img/eID_logo.jpg">JPG</a> or <a href="/assets/img/eID_logo.png">PNG transparent</a>
		</p>
		</div>
		</div>
		</div>
		</div> 
		  	     <!-- Footer
      ================================================== -->
      <footer style="position:relative;" class="footer">
	  <hr>
        <p  class="pull-right"><a href="#">Back to top</a></p>
        <p>Šī vietne darbojas uz Red Hat Enterprise Linux Server 6.2 (Santiago) as virtual guest on Vmware 7. Apache Tomcat 6 . All rights reserved <a href="http://www.pmlp.gov.lv" target="_blank">PMLP</a> 2012. 
	
		 	<a href="http://eidtstiis.pmlp.gov.lv" target="_blank">eidtstiis.pmlp.gov.lv</a>
	</p>
      </footer>
		  
		  
    </div> <!-- /container -->
	

    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../assets/js/jquery.js"></script>
    <script src="../assets/js/bootstrap-transition.js"></script>
    <script src="../assets/js/bootstrap-alert.js"></script>
    <script src="../assets/js/bootstrap-modal.js"></script>
    <script src="../assets/js/bootstrap-dropdown.js"></script>
    <script src="../assets/js/bootstrap-scrollspy.js"></script>
    <script src="../assets/js/bootstrap-tab.js"></script>
    <script src="../assets/js/bootstrap-tooltip.js"></script>
    <script src="../assets/js/bootstrap-popover.js"></script>
    <script src="../assets/js/bootstrap-button.js"></script>
    <script src="../assets/js/bootstrap-collapse.js"></script>
    <script src="../assets/js/bootstrap-carousel.js"></script>
    <script src="../assets/js/bootstrap-typeahead.js"></script>

  </body>
</html>
