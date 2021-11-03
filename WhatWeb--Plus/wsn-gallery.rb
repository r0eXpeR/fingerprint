Plugin.define do
name "WSN-Gallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "WSN Gallery is a media gallery for images, videos and more. It can resize and edit images, and convert videos to play in the integrated flash player for a YouTube-style video site. Translatable to any language, it offers a vast array of features to power your gallery site."
website "http://www.wsngallery.com/"
matches [
{ :text=>'<title>WSN Gallery Admin Login</title>' },
{ :text=>'<title>WSN Gallery Administration Panel</title>' },
{ :version=>/<span class="(topbar|group)" style="margin-left: 8px;">WSN Gallery ([\d\.]+) Admin Login<\/span>/, :offset=>1 },
{ :version=>/<span class="(topbar|group)">WSN Gallery ([\d\.]+) Admin Panel<\/span>/, :offset=>1 },
{ :certainty=>25, :text=>'<!-- place any jquery-dependent script tags that need to be before the /head tag in here -->' },
{ :certainty=>25, :regexp=>/<div class="boxtitle" on[c|C]lick="minmax\('[a-z]+box'\)"><img src=/ },
{ :text=>'<textarea readonly rows="20" cols="75">WSN Gallery License Agreement' },
]
passive do
	m=[]
	if @body =~ /<title>WSN Gallery<\/title>/
		if @body =~ /<p>WSN Gallery is unable to render this page. The reason is described below:/ and @body =~ /<p>Version info: WSN Gallery ([\d\.]+)<\/p>/
			m << { :version=>@body.scan(/<p>Version info: WSN Gallery ([\d\.]+)<\/p>/) }
		end
		if @body =~ /<div class="main">Non-numeric id value given in creating object.<\/div>/ and @body =~ /<p>WSN Gallery ([\d\.]+)<\/p>/
			m << { :version=>@body.scan(/<p>WSN Gallery ([\d\.]+)<\/p>/) }
		end
	end
	m
end
end
