Plugin.define do
name "UrlRewriter_NET"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open Source URL Rewriter for .NET / IIS / ASP.NET - UrlRewriter.NET is an open-source, light-weight, highly configurable URL rewriting component for ASP.NET 1.1 . 4.0 which provides similar IIS Rewrite capabilities that the Apache web server provides with mod_rewrite and .htaccess."
website "http://urlrewriter.net/"
matches [
    {:search=>"headers", :text=>'UrlRewriter.NET'},
    {:search=>"headers[x-powered-by]", :version=>/UrlRewriter\.NET ([^\s]+)/}
]
end
