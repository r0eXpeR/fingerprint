Plugin.define do
name "Synology-DiskStation"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Synology DiskStation provides a full-featured Network Attached Storage (NAS) solution which offers RAID storage, backup, and network surveillance (NVR)."
website "http://www.synology.com/"
dorks [
'intitle:"Synology DiskStation" inurl:"webman/index.cgi"'
]
matches [
{ :name=>'Device Name in Page Title',
  :string=>%r{<title>Synology DiskStation - ([^\s]+)</title>} },
{ :name=>'Login Page HTML Comment',
  :text=>"<!-- Don't contain any text node to avoid IE insertBefore bug -->" },
{ :name=>'SYNO.SDS.Session JavaScript',
  :text=>'<script type="text/javascript">SYNO.SDS.Session = {' },
{ :name=>'Login Form HTML',
  :text=>'<div id="sds-login-dialog-form" style="position: absolute; top: -10000px; left: -10000px;"><form id="login-form" class="x-plain-body" method="POST" action="login.cgi" target="login_iframe"' },
{ :name=>'synodefs.cgi Version Detection',
  :url=>"/webman/index.cgi",
  :version=>%r{<script type="text/javascript" src="synodefs\.cgi\?v=([\d]+)"></script>} },
{ :name=>'Stauts Header',
  :certainty=>75,
  :search=>"headers[stauts]",
  :url=>'/',
  :regexp=>/^30[12] Moved/ },
]
end
