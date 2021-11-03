Plugin.define do
	name "Apache-Tomcat" 
	authors [
		"Louis Nyffenegger","Andrew Horton", "Code0x58" 
		] 
	description "Apache Tomcat Web Server"
	website "http://tomcat.apache.org/"
	version "0.5"
	matches [
    {:mmh3 => '-297069493'},
    {:name=>"/RELEASE-NOTES.txt", :url=>"/RELEASE-NOTES.txt", :string=>/(\$Id: RELEASE-NOTES[^\$]+)/},
    {:name=>"/RELEASE-NOTES.txt", :url=>"/RELEASE-NOTES.txt", :version=>/Apache Tomcat Version ([0-9\.]+)/},
    {:name=>"Footer", :version=>/Apache Tomcat\/([0-9\.]+)<\/h3><\/body><\/html>/},
    {:name=>"Java Stack Trace Error", :regexp=>/org\.apache\.tomcat\..*java\.lang\.Thread\.run/},
    {:name=>"Tomcat admin /manager/status", :url=>"/manager/status", :text=>"tomcat"},
    {:name=>"catalina home",:regexp=>/CATALINA_HOME\/webapps\/ROOT\/index\.html/},
    {:name=>"tomcat in title",:regexp=>/<title>Apache Tomcat<\/title>/},
    {:offset => 1, :search => 'headers[x-powered-by]', :regexp => /\bTomcat\b(?:-([\d.]+))?/},
    {:search => "headers", :text => 'Apache-Coyote'},
    {:search => "headers", :text => 'Tomcat Manager Application'},
    {:search => 'headers[server]', :regexp => /^Apache-Coyote/},
    {:url => '/ROOT/favicon.ico', :md5 => '33dbbf77f72ca953995538615aa68f52'},
    {:url => '/docs/images/tomcat.gif', :md5 => '445f5d5679a3a641040639680c3d6afa'},
    {:url => '/docs/images/tomcat.gif', :md5 => '4e41a821f4efec0737195ca34695a4d5'},
    {:url => '/favicon.ico', :md5 => '33dbbf77f72ca953995538615aa68f52'},
    {:url => '/host-manager/images/tomcat.gif', :md5 => '5dd09d79ce7a3ff15791dc3de9186cbb'},
    {:url => '/manager/images/tomcat.gif', :md5 => '5dd09d79ce7a3ff15791dc3de9186cbb'},
    {:url => '/tomcat.png', :md5 => '74365f51610d6f6cb5a7a229963b4b20'},
    {:url => '/tomcat.png', :md5 => 'b1661b22c16b597596a005ab73068c0b'},
	]
	aggressive do
		target = URI.join(@base_uri.to_s,"/#{randstr}").to_s	
		info = []
		begin 
			status, _, _, body, _ = open_target(target)
			if status == 404
				v = body.scan(/Apache Tomcat\/([456]\.\d+\.\d+)/)[0]
				unless v.nil?
					info <<  {:name=>"Tomcat version", :certainty=>100, :version=>v}
				end
			end
		rescue
		end
		info
	end
end
