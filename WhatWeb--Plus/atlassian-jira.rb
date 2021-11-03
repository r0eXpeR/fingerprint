Plugin.define do
name "Atlassian-JIRA"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "JIRA provides issue tracking and project tracking for software development teams to improve code quality and the speed of development."
website "http://www.atlassian.com/software/jira/"
dorks [
'"Bug tracking and project tracking for software development powered by Atlassian JIRA" "Warning: either you have javascript disabled or your browser does not support javascript"'
]
matches [
{ :text=>"<noscript><h1>Warning: either you have javascript disabled or your browser does not support javascript. To work properly, this page requires javascript to be enabled.</h1></noscript>" },
{ :text=>'<a class="seo-link" href="http://www.atlassian.com/software/jira/bug-tracking.jsp">Bug tracking</a> and <a class="seo-link" href="http://www.atlassian.com/software/jira/tour/project-tracking.jsp">project tracking</a> for <a class="seo-link" href="http://www.atlassian.com/software/jira/tour/software-development.jsp">software development</a> powered by <a href="http://www.atlassian.com/software/jira" class="smalltext">Atlassian JIRA</a>' },
{ :version=>/<span id="footer-build-information"  style="color: #666666;" >\(([^\)^\s]+)\)<\/span>/ },
{ :text=>'<meta name="decorator" content="atl.general">' },
]
passive do
	m=[]
	m << { :name=>"x-arequestid header" } if @headers["x-arequestid"] =~ /^[\d]+x[\d]+x[\d]+$/
	m << { :name=>"x-ausername header" } unless @headers["x-ausername"].nil?
	m << { :name=>"atlassian.xsrf.token" } if @headers["set-cookie"] =~ /atlassian\.xsrf\.token=/
	m
end
end
