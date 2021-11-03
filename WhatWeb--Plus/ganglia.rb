Plugin.define do
name "Ganglia"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Ganglia is a scalable distributed monitoring system for high-performance computing systems such as clusters and Grids. It is based on a hierarchical design targeted at federations of clusters. It leverages widely used technologies such as XML for data representation, XDR for compact, portable data transport, and RRDtool for data storage and visualization."
website "http://ganglia.sourceforge.net/"
dorks [
'intitle:"Ganglia:: Cluster Report" "Cluster Report for"'
]
matches [
    {:search=>"headers", :text=>'gs=unspecified'},
    {:regexp=>/Nodes colored by 1-minute load|<A HREF=".\/node_legend.html">Legend<\/A>/},
    {:text=>'<B>Metric</B>&nbsp;&nbsp;<SELECT NAME="m" OnChange="ganglia_form.submit();">'},
    {:text=>'<TITLE>Ganglia:: Cluster Report</TITLE>'},
    {:text=>'Ganglia:: Cluster Report'},
    {:text=>'NAME="ganglia_form'},
    {:text=>'OnChange="ganglia_form.submit();'},
    {:version=>/<CENTER>\n<FONT SIZE="-1" class=footer>\n(Gmetad|Ganglia) Web Frontend version ([\d\.]+)\n<A HREF="http:\/\/ganglia\.sourceforge\.net\/downloads\.php\?component=ganglia-webfrontend&amp;\nversion=[\d\.]+">Check for Updates\.<\/A><BR>\n/, :offset=>1},
    {:version=>/Web Backend <i>\(gmetad\)<\/i> version ([\d\.]+)\n<A HREF="http:\/\/ganglia\.sourceforge\.net\/downloads\.php\?component=gmetad&amp;\nversion=[\d\.]+">Check for Updates\.<\/A><BR>/, :offset=>1 }
]
end
