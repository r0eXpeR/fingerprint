Plugin.define do
name "Confluence"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Confluence combines powerful online authoring capabilities, deep Office integration and an extensive plugin catalog to help people work better together and share information effortlessly."
website "http://www.atlassian.com/software/confluence/"
matches [
    {:certainty=>75, :ghdb=>'"Atlassian Confluence" "the Enterprise Wiki" "Intranet software for documentation and knowledge management" "Report a bug"'},
    {:search=>"headers", :text=>'x-confluence'},
    {:text=>'<li class="noprint"><a href="http://www.atlassian.com/software/confluence" class="hover-footer-link">Atlassian Confluence</a>'},
    {:text=>'<meta id="confluence-context-path" name="confluence-context-path" content="">'},
    {:version=>/Powered by <a href="http:\/\/www\.atlassian\.com\/software\/confluence"[^>]*>Atlassian Confluence<\/a> ([\d\._]+)/}
]
passive do
	m=[]
	m << { :name=>"x-confluence-cluster-node header" } unless @headers["x-confluence-cluster-node"].nil?
	m << { :name=>"x-confluence-request-time header" } unless @headers["x-confluence-request-time"].nil?
	m
end
end
