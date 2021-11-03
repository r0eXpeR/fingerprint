Plugin.define do
name "MobileIron-MDM"
authors [
  'bcoles', 
]
version "0.1"
description "MobileIron's mobile device management (MDM) capabilities give you the fundamental visibility and IT controls needed to secure, manage, and monitor any corporate­ or employee­owned mobile device or desktop that accesses business critical data."
website "https://www.mobileiron.com/en/unified-endpoint-management/solutions/mobile-device-management"
dorks [
  'intitle:"MobileIron User Portal: Sign In" inurl:mifs/user'
]
matches [
  { :search=>"headers[location]", :status=>302, :text=>'/mifs/user/index.html', :certainty=>75},
  { :url=>'/mifs/user/index.html', :status=>302, :search=>"headers[location]", :text=>'/mifs/user/login.jsp'}, 
  { :url=>'/mifs/user/login.jsp', :status=>200, :string=>%r{<span rs="copyright"></span> &copy; ([\d]{4}) MobileIron} },
  { :url=>'/mifs/user/login.jsp', :status=>200, :string=>%r{Copyright &copy; ([\d]{4}) MobileIron. All rights reserved.} },
  { :url=>'/mifs/user/login.jsp', :status=>200, :version=>%r{<link href="/mifs/css/pages/userlogin.css\?([\d\.]+)"} },
  { :status=>200, :text=>'<title>MobileIron User Portal: Sign In' },
]
end
