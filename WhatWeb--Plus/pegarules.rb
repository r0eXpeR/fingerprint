Plugin.define do
name "PegaRULES"
authors [
  "Andrew Horton",

]
version "0.2"
description "PegaRULES Process Commander is BPM software from Pega. Many of the world's leading organizations use Pega to drive revenue growth, improve customer experience, and enhance operational efficiency. Pega's unified offering is recognized by industry analysts as a leader in CRM, BPM, case management and business rules"
website "http://www.pega.com/"
dorks [
'intitle:"Welcome to PegaRULES"',
'inurl:/prweb/PRServlet/'
]
matches [
{:name=>'cookie',:search=>"headers[set-cookie]",:text=>"Pega-RULES"},
{:name=>'title', :text=>'<title> Welcome to PegaRULES </title>' },
{:name=>'copyright footer',:regexp=>/<span>[^<]+Copyright[^<]+Pegasystems Inc/m},
{:name=>'shortcut icon',:text=>'<LINK REL="SHORTCUT ICON" HREF="images/pzPegaIcon.ico">'},
{ :version=>/td style="text-align: center;"><span id="ProductVersion" class="ProductVersion">Version ([^<]+)<\/span><\/td/ },
{ :text=>'<!-- B-12380 avoid reuse/repost of username/password -->' },
{ :text=>'<HEAD><H3>Unable to logon to the PegaRULES system.</H3></HEAD>' },
{ :regexp=>/<TR><TD>\s+<FONT face="Helvetica">\s+Your system policy has denied access to the requested URL\.\s+<\/FONT>/ },
]
end
