Plugin.define do
name "SmarterStats"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Complete SEO and Web Analytics for Individuals and Enterprises"
website "http://www.smartertools.com/smarterstats/web-analytics-seo-software.aspx"
matches [
{ :string=>/<a href='http:\/\/www.smartertools.com\/smarterstats\/web-analytics-seo-software.aspx' target='_blank'>SmarterStats (Enterprise|Professional|Free) ([\d\.]+)<\/a>( |&nbsp;)\|( |&nbsp;)<a href='http:\/\/www.smartertools.com\/smarterstats\/web-analytics-seo-software.aspx' target='_blank'>Web Log Analytics( & SEO Software)?<\/a>/ },
{ :version=>/<a href='http:\/\/www.smartertools.com\/smarterstats\/web-analytics-seo-software.aspx' target='_blank'>SmarterStats (Enterprise|Professional|Free) ([\d\.]+)<\/a>( |&nbsp;)\|( |&nbsp;)<a href='http:\/\/www.smartertools.com\/smarterstats\/web-analytics-seo-software.aspx' target='_blank'>Web Log Analytics( & SEO Software)?<\/a>/, :offset=>1 },
{ :string=>/<a href='http:\/\/www.smartertools.com\/Products\/SmarterStats\/Overview.aspx' target='_blank'>SmarterStats (Enterprise|Professional|Free) ([\d\.]+)<\/a>&nbsp;\|&nbsp;<a href='http:\/\/www.smartertools.com\/' target='_blank'>Windows Web Analytics<\/a>/ },
{ :version=>/<a href='http:\/\/www.smartertools.com\/Products\/SmarterStats\/Overview.aspx' target='_blank'>SmarterStats (Enterprise|Professional|Free) ([\d\.]+)<\/a>&nbsp;\|&nbsp;<a href='http:\/\/www.smartertools.com\/' target='_blank'>Windows Web Analytics<\/a>/, :offset=>1 },
{ :string=>/										<td class=bar1inner>SmarterStats (Enterprise|Professional|Free|FREE) Edition ([\d\.]+)<\/td>/ },
{ :version=>/										<td class=bar1inner>SmarterStats (Enterprise|Professional|Free|FREE) Edition ([\d\.]+)<\/td>/, :offset=>1 },
{ :text=>"<title>Login - SmarterStats</title>" },
]
end
