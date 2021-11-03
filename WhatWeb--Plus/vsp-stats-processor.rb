Plugin.define do
name "VSP-Stats-Processor"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "vsp stats processor is a multi game log analyzer / stats generator / log parser."
website "http://www.scivox.net/vsp/"
matches [
{ :regexp=>/powered by <A HREF="http:\/\/www.(scivox.net|clanavl.com)\/vsp\/">vsp stats processor<\/A>/ },
{ :text=>'&nbsp;theme:bismarck by <A HREF="#" TITLE="myrddin8 <AT> gmail <DOT> com">myrddin</A>&nbsp;', :string=>"bismarck" },
{ :certainty=>25, :regexp=>/<TITLE>vsp \((map|award|game|player) stats\)<\/TITLE>/ },
{ :certainty=>25, :text=>"<BODY>error: cannot establish database connection or database database_name does not exist", :string=>"Error" },
{ :version=>/<A HREF="http:\/\/www.clanavl.com\/vsp\/">vsp<\/A> v([\d\.]+),/ },
]
end
