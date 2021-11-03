Plugin.define do
name "Microsoft-Sharepoint"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "Microsoft SharePoint 2010 makes it easier for people to work together. Using SharePoint 2010, your people can set up Web sites to share information with others, manage documents from start to finish, and publish reports to help everyone make better decisions."
website "http://sharepoint.microsoft.com/"
dorks [
'"You may be trying to access this site from a secured browser on the server. Please enable scripts and reload this page."'
]
matches [
	{ :certainty=>75, :text=>"<noscript><div class='noindex'>You may be trying to access this site from a secured browser on the server. Please enable scripts and reload this page.</div></noscript>" },
	{ :certainty=>75, :text=>"<noscript><div class='noindex'>Please enable scripts and reload this page. If your browser does not support script, then you can visit the minimal version of this site at <a href=" },
	{ :certainty=>75, :text=>'<meta name="CollaborationServer" content="SharePoint Team Web Site" />' },
	{ :text=>'<input type="hidden" name="MSOWebPartPage_PostbackSource" id="MSOWebPartPage_PostbackSource" value=' },
	{ :text=>'<meta name="GENERATOR" content="Microsoft SharePoint" />' },
	{ :text=>'<meta name="progid" content="SharePoint.WebPartPage.Document" />' },
]
passive do
	m=[]
	m << { :version=>@headers["microsoftsharepointteamservices"].to_s } unless @headers["microsoftsharepointteamservices"].nil?
	m << { :name=>"x-sharepointhealthscore HTTP header" } unless @headers["x-sharepointhealthscore"].nil?
	m << { :certainty=>25, :name=>"exires HTTP header" } unless @headers["exires"].nil?
	m
end
end
