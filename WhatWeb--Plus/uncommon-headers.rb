Plugin.define do
name "UncommonHeaders"
authors [
  "Andrew Horton",

]
version "0.3"
description "Uncommon HTTP server headers. The blacklist includes all the standard headers and many non standard but common ones. Interesting but fairly common headers should have their own plugins, eg. x-powered-by, server and x-aspnet-version. Info about headers can be found at www.http-stats.com"
passive do
	m=[]
	found=[]
	normal_headers=%w|accept-ranges age allow cache-control cachecontrol connection content-disposition content-encoding content-language content-length content-location content-md5 content-range content-type date etag expires host last-modified location mime-version p3p pragma proxy-authenticate refresh server set-cookie status strict-transport-security trailer transfer-encoding vary via warning www-authenticate x-aspnet-version x-cache x-cache-lookup x-pad x-powered-by x-runtime x-ua-compatible x-frame-options x-xss-protection x-pingback keep-alive|
	unless @headers.nil?	
		@headers.each do |x,y|
			unless normal_headers.include?(x)
				found << x
			end
		end
		unless found.empty?
			m << {:name=>"headers",:string=>found.join(",")}
		end
	end	
	m
end
end
