Plugin.define do
name "KnowledgeTree"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Document Management Software"
website "http://www.knowledgetree.com/"
dorks [
'"powered by KnowledgeTree"'
]
matches [
{ :text=>'<title>Dashboard | KnowledgeTree</title>' },
{ :text=>'<title>Login | KnowledgeTree</title>' },
{ :text=>'/resources/powered-by-kt.png" border="0" alt="Powered by KnowledgeTree" title="Powered by KnowledgeTree"/></a>' },
{ :md5=>"bace14cd488b34068a9c2e54bff2b5b1", :url=>"/resources/favicon.ico" },
]
passive do
        m=[]
        if @body =~ /                    <a href="http:\/\/www.knowledgetree.com\/">Document Management Software<\/a><br>/
		if @body =~ /		    	    KnowledgeTree Version ([\d\.]+) \(Community Edition\)<br\/>/
	                version=@body.scan(/		    	    KnowledgeTree Version ([\d\.]+) \(Community Edition\)<br\/>/)[0][0]
        	        m << {:version=>version}
		end
        end
        m
end
end
