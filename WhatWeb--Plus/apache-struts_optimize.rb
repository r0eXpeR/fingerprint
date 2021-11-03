Plugin.define do
name "Apache-Struts"
authors [
  "Brendan Coles <bcoles@gmail.com>", 
  "winezero", 
  "Andrew Horton", 
]
version "0.2"
description "The Apache Struts web framework is a free open-source solution for creating Java web applications."
website "https://struts.apache.org/"
matches [
{:search=>"headers[set-cookie]", :regexp=>/org\.apache\.struts\.action\.LOCALE=[^\s]+;/ },
{:search=>"headers[set-cookie]", :regexp=>/org\.apache\.struts\.[^\s]+=[^\s]+;/, :certainty=>75 },
{:search=>"body", :regexp=>/<a\s+href=[^>]+org.apache.struts/},
{:search=>"all", :version=>2, :text=>'org.apache.struts2', :certainty=>25},
{:search=>"all", :version=>1, :text=>'org.apache.struts.', :certainty=>25},
{:regexp=>/Development mode, or devMode, enables extra\s+debugging behaviors and reports to assist developers.  To disable this mode, set:\s+<pre>\s+  struts.devMode=false/, :string=>"Development Mode"},
{:regexp => /^<(?:a|form|script|iframe|frame).*(['\"]{1})(\/?((?:(?!\1|\n|http(s)?:\/\/).)+)\.action)(\?(?:(?!\1).)*)?\1/ },
{:regexp => /^<(?:a|form|script|iframe|frame).*(['\"]{1})(\/?((?:(?!\1|\n|http(s)?:\/\/).)+)\.do)(\?(?:(?!\1).)*)?\1/ },
{:regexp => /<title>OGNL Console<\/title>.*Welcome to the OGNL console/ },
{:regexp => /(Struts Problem Report|org.apache.struts2|struts.devMode|struts-tags|There is no Action mapped for namespace)/ },
{:url => '/struts/webconsole.html' ,:regexp => /<title>OGNL Console<\/title>.*Welcome to the OGNL console/ },
{:url => '/?actionErrors=notfoundnotfound' ,:regexp => /(Struts Problem Report|org.apache.struts2|struts.devMode|struts-tags|There is no Action mapped for namespace)/ },
{:url => '/system/index!notfoundnotfound.action' ,:regexp => /(Struts Problem Report|org.apache.struts2|struts.devMode|struts-tags|There is no Action mapped for namespace)/ },
{:url => '/system/index!notfoundnotfound.do' ,:regexp => /(Struts Problem Report|org.apache.struts2|struts.devMode|struts-tags|There is no Action mapped for namespace)/ },
{:url => '/notfoundnotfound.do' ,:regexp => /(Struts Problem Report|org.apache.struts2|struts.devMode|struts-tags|There is no Action mapped for namespace)/ },
{:url => '/notfoundnotfound.action' ,:regexp => /(Struts Problem Report|org.apache.struts2|struts.devMode|struts-tags|There is no Action mapped for namespace)/ },
]
end
