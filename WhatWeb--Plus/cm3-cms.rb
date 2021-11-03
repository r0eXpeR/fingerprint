Plugin.define do
name "cm3-cms"
authors [
  "Aung Khant <http://yehg.net/>", 

]
version "0.1"
description "CM3/CM2 CMS - http://www.cm3cms.com/ , CM2 was based on ASP, CM3 was based on ASP.NET."
matches [
    {:name=>'HTML Body (CM2)',:text=>'name="cm25_main"'},
    {:name=>'HTML Body (CM2)',:text=>'name="cm2_top" id="cm2_top"'},
    {:name=>'HTML Body (CM3)',:text=>'alt="Content management system: cm3 built and powered"'},
    {:name=>'HTML Body (CM3)',:text=>'cm3powered_green.gif"'},
    {:name=>'HTML Body (CM3)',:text=>'logo_cm3_top.gif" border="0"'},
    {:name=>'HTML Body (CM3)',:text=>'name="id="cm3top" name="cm3top"'},
    {:name=>'JavaScript Object (CM2)',:text=>'top.cm2_home.location.href'},
    {:name=>'Set-Cookie Header (CM3)', :search=>"headers[set-cookie]", :regexp=>/cm3session/},
    {:search=>"headers", :text=>'cm3session'},
    {:text=>'content="cm3 content manager'}
]
aggressive do
	m=[]
	target = URI.join(@base_uri.to_s,'admin/').to_s	
	status,url,ip,body,headers=open_target(target)	
	if status == 200
		if body =~ /(name="cm2_top" id="cm2_top"|name="cm25_main")/
			m << {:name => "HTML Body (CM2)"}
		end
	end
	target = URI.join(@base_uri.to_s,'AcoraCMS/Admin/').to_s	
	status,url,ip,body,headers=open_target(target)	
	if status == 200
		if headers["set-cookie"] =~ /cm3session/
			m << {:name => "HTTP Cookie (CM3)"}
		end
	end	
	m
end
end
