Plugin.define do
name "Oracle-ADF-Faces"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle ADF Faces Components is a set of over a 150 Ajax-enabled JSF components that let you build a richer Web user interface for Java EE applications."
website "http://www.oracle.com/technetwork/developer-tools/adf/overview/index-092391.html"
dorks [
'"This page uses JavaScript and requires a JavaScript enabled browser.Your browser is not JavaScript enabled."'
]
matches [
{ :version=>/<!-- Created by Oracle ADF Faces \((Version mismatch: )?ADF Faces API - ([\d_]+)\/ADF Faces Implementation - ([\d_]+)\), skin:([^-]+) -->/, :offset=>1 },
{ :version=>/<!-- Created by Oracle ADF Faces \((Version mismatch: )?ADF Faces API - ([\d_]+)\/ADF Faces Implementation - ([\d_]+)\), skin:([^-]+) -->/, :offset=>2 },
{ :string=>/<!-- Created by Oracle ADF Faces \((Version mismatch: )?ADF Faces API - ([\d_]+)\/ADF Faces Implementation - ([\d_]+)\), skin:([^-]+) -->/, :offset=>3 },
{ :text=>'<meta name="generator" content="Oracle ADF Faces">' },
{ :text=>"<script>var _AdfWindowOpenError='A popup window blocker has been detected in your browser. Popup blockers interfere with the operation of this application. Please disable your popup blocker or allow popups from this site.';</script>" },
]
end
