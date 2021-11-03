Plugin.define do
name "CushyCMS"
authors [
  "Andrew Horton",

]
version "0.2"
description "Simple, closed-source CMS. Free and paid versions. Built with Ruby on Rails"
website "http://www.cushycms.com/"
matches [
{:text=>'Content Management Powered by <a href="http://www.cushycms.com">CushyCMS</a>'},
{:text=>'<li id="poweredBy"><img alt="Powered by CushyCMS" src="/images/cushy_badge.gif'},
{:text=>'<span id="cushycms-footer">Powered by CushyCMS</span>'},
{:regexp=>/<a href="http:\/\/www.cushycms.com\/[^>]+>(<font[^>]+>)?Powered by CushyCMS/}, 
{:regexp=>/<[^>]+class="cushycms"/}
]
passive do
  m=[]
  m << {:name=>"Cushy Cookie" } if @headers["set-cookie"] =~ /_cushy_session=.*/
  m
end
end
