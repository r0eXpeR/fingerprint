Plugin.define do
name "imperva-securesphere"
authors [
  "Aung Khant <http://yehg.net/>", 

]
version "0.1"
description "Imperva SecureSphere - http://www.impervaguard.com/SecureSphere-Platform.asp"
matches [
{:name=>'HTML Body',:text=>'<title>SecureSphere - Default</title>'},
{:name=>'HTML Body',:text=>'<td><font class="gray-text-small">SecureSphere includes software developed by Oracle Corporation.</font></td></tr>'},
{:name=>'HTML Body',:text=>'src="/SecureSphere/scripts/infra/ActiveRequests.js">'},
{:name=>'HTML Body',:text=>'src="/SecureSphere/scripts/infra/Mprv.js"></script>'},
{:name=>'HTML Body',:text=>'src="/SecureSphere/scripts/infra/SessionUtils.js">'},
{:name=>'Location Header', :search=>"headers[location]", :regexp=>/SecureSphere\/secsphLogin\.jsp/}
]
aggressive do
	m=[]
	target = URI.join(@base_uri.to_s,'SecureSphere/secsphLogin.jsp').to_s	
	status,url,ip,body,headers=open_target(target)	
	if status == 200
		if body =~ /<td><font class="gray\-text\-small">SecureSphere includes software developed by Oracle Corporation\.<\/font><\/td><\/tr>/
			m << {:name => "HTML Body (CM2)"}
		end
	end
	m
end
end
