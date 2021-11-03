Plugin.define do
name "QNAP-NAS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.5"
description "QNAP provides a series of network attached storage (NAS) products and network video recorder (NVR) solutions - homepage:http://www.qnap.com/"
dorks [
'inurl:Qmultimedia/cgi-bin/thumb_index.cgi',
'inurl:/cgi-bin/authLogin.cgi'
]
matches [
{ :ghdb=>'inurl:"Qmultimedia/cgi-bin/thumb_index.cgi" filetype:cgi', :module=>"Multimedia Station" },
{ :text=>"<title>QNAP Photo Station</title>", :module=>"Photo Station" },
{ :text=>"<title>QNAP Download Station</title>", :module=>"Download Station" },
{ :text=>"<TITLE>QNAP Multimedia Station (Photo Album)</TITLE>", :module=>"Multimedia Station" },
{ :text=>"<TITLE>Multimedia Station</TITLE>", :module=>"Multimedia Station", :certainty=>75 },
{ :certainty=>75, :text=>'NavPage("http://"+ location_hostname_for_ipv6(location.hostname) +":"+ qweb_port +"/", 0);' },
{ :certainty=>75, :text=>'location.href=pr+"://["+location.hostname+"]"+pt+redirect_suffix;' },
{ :regexp=>/^\/\/window.location = '\/indexnas\.cgi\?counter=' \+ Math\.floor\(\(diff1-diff2\)\/1000\);[\r\n]^window.location.replace\('\/indexnas\.cgi\?counter=' \+ Math\.floor\(\(diff1-diff2\)\/1000\)\);$/ },
{ :text=>'<a href="http://www.qnap.com"><img src="/ajax_obj/images/qnap_logo_w.gif" alt="QNAP Turbo NAS" title="QNAP Turbo NAS"' },
{ :text=>'<td class="header_tb_logo"><img id=\'qlogo\' src="/ajax_obj/images/qnap_logo_dark.gif" width="158" height="75"></td>' },
{ :text=>'<table width="100%" border="0" background="/v3_menu/images/admin_header.jpg" cellpadding="0" cellspacing="0" class="12-blue">', :model=>"Unknown Model (not TS Series)" },
{ :text=>'<img id="img_webserver" src="/ajax_obj/images/login_main_2.jpg" longdesc="javascript:onQuickLinkChange(2);" alt="Web Server" />', :module=>"QWeb Server" },
{ :text=>'<img id="img_multimedia" src="/ajax_obj/images/login_main_3.jpg" longdesc="javascript:onQuickLinkChange(3);" alt="Multimedia Station" />', :module=>"Multimedia Station" },
{ :text=>'<img id="img_download" src="/ajax_obj/images/login_main_4.jpg" longdesc="javascript:onQuickLinkChange(4);" alt="Download Station" />', :module=>"Download Station" },
{ :text=>'<img id="img_webfile" src="/ajax_obj/images/login_main_5.jpg" longdesc="javascript:onQuickLinkChange(5);" alt="Web File Manager" />', :module=>"Web File Manager" },
{ :text=>'<img id="img_surveillance" src="/ajax_obj/images/login_main_6.jpg" longdesc="javascript:onQuickLinkChange(6);" alt="Surveillance Station" />', :module=>"Surveillance Station" },
{ :text=>'<title>Welcome to QNAP Turbo NAS</title>' },
{ :url=>"/ajax_obj/images/favicon.ico", :md5=>"9afa5d60e5ef15dc75d7662e418cac72" },
]
passive do
	m=[]
	if @base_uri.path == "/cgi-bin/authLogin.cgi" and @body =~ /^<QDocRoot version="[\d\.]+">$/
		m << { :firmware=>@body.scan(/<version>(<!\[CDATA\[)?([^\]]+)(\]\]>)?<\/version>/)[0][1]+" build "+@body.scan(/<build>(<!\[CDATA\[)?([^\]]+)(\]\]>)?<\/build>/)[0][1] } if @body =~ /<version>(<!\[CDATA\[)?([^\]]+)(\]\]>)?<\/version>/ and @body =~ /<build>(<!\[CDATA\[)?([^\]]+)(\]\]>)?<\/build>/
		m << { :model=>@body.scan(/<internalModelName>(<!\[CDATA\[)?([^\]]+)(\]\]>)?<\/internalModelName>/)[0][1] } if @body =~ /<internalModelName>(<!\[CDATA\[)?([^\]]+)(\]\]>)?<\/internalModelName>/
		m << { :module=>"WebFS" } if @body =~ /<webFSEnabled>(<!\[CDATA\[)?1(\]\]>)?<\/webFSEnabled>/
		m << { :module=>"Multimedia Station" } if @body =~ /<QMultimediaEnabled>(<!\[CDATA\[)?1(\]\]>)?<\/QMultimediaEnabled>/
		m << { :module=>"MSV2" } if @body =~ /<MSV2Supported>(<!\[CDATA\[)?1(\]\]>)?<\/MSV2Supported>/
		m << { :module=>"MSV2 Web" } if @body =~ /<MSV2WebEnabled>(<!\[CDATA\[)?1(\]\]>)?<\/MSV2WebEnabled>/
		m << { :module=>"Download Station" } if @body =~ /<QDownloadEnabled>(<!\[CDATA\[)?1(\]\]>)?<\/QDownloadEnabled>/
		m << { :module=>"QWeb Server" } if @body =~ /<QWebEnabled>(<!\[CDATA\[)?1(\]\]>)?<\/QWebEnabled>/
		m << { :module=>"Qweb Server SSL" } if @body =~ /<QWebSSLEnabled>(<!\[CDATA\[)?1(\]\]>)?<\/QWebSSLEnabled>/
		m << { :module=>"NVR" } if @body =~ /<NVREnabled>(<!\[CDATA\[)?1(\]\]>)?<\/NVREnabled>/
		m << { :module=>"Web File Manager 2" } if @body =~ /<WFM2>(<!\[CDATA\[)?1(\]\]>)?<\/WFM2>/
	end
	if @body =~ /var URL_RANDOM_NUM = "[0-9\.]+";/
		f=@body.scan(/var URL_RANDOM_NUM = "([0-9\.]+)";/)[0]
		m << {:name=>"javascript variable", :firmware=>f }
	end
	m
end
end
