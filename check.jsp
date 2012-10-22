<%-- JSP directive --%>
<%@ page import="java.net.*, java.io.*, java.util.*, java.security.cert.*, javax.naming.ldap.LdapName, javax.naming.ldap.Rdn"
%>

<%
	//if page is being accessed by HTTP, then redirect user to main page
	if ((String) request.getAttribute("javax.servlet.request.ssl_session") == null	){
		String redirectURL = "http://eidtsttom.pmlp.gov.lv/";
		response.sendRedirect(redirectURL);
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
          <a class="brand" href="http://eidtsttom.pmlp.gov.lv/en/check.php">eID</a>
          <div class="nav-collapse">
            <ul class="nav">
              <li class="active"><a href="http://eidtsttom.pmlp.gov.lv/en">Home</a></li>
            </ul>
			</div>
			<div class="nav-collapse"style="float:right">
				<ul class="nav">


				 <li class="active">
				 <a href="/">LV</a>
				</li>
				 <li ><a href="/en/check.jsp">EN</a></li>
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
	   
      <p>
      	
<%
	//Get data from smartcard and display it on page	
	String cipherSuite = (String) request.getAttribute("javax.servlet.request.cipher_suite");  
	 
	if (cipherSuite != null) {  		
		 X509Certificate[] certChain = (X509Certificate[]) request.getAttribute("javax.servlet.request.X509Certificate");  
			
		 if (certChain != null) {  
		 
			String dn = certChain[0].getSubjectX500Principal().getName();
			LdapName ldapDN = new LdapName(dn);
			
			for(Rdn rdn: ldapDN.getRdns()) {
				if (rdn.getType().toString().equals("CN")) {
					out.println ("<h1>"+ rdn.getValue() +", tavs eID darbojas korekti!</h1><br>");
					out.println ("Šo informāciju mēs nolasījām no Tavā eID iekļautā autentifikācijas sertifikāta:<br>");
					out.println ("Vārds, uzvārds:"+ rdn.getValue() +"<br>");								
				};
				
				if (rdn.getType().toString().equals("SERIALNUMBER")) {
					out.println ("Personas kods:"+ rdn.getValue() +"<br>");	
				}
			}
			out.println ("Jūsu kartes derīguma termiņš: ");
			out.println ("" + certChain[0].getNotAfter());
			out.println ("<br>");
		}  
	}  
%>		
      </p>
    </div>
      
    
		  
		  	     <!-- Footer
      ================================================== -->
      <footer style="position:relative; top:100px"class="footer">
	  
      </footer>
		  
		  </div>
    </div> <!-- /container -->
	


    <!-- Le javascript
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
