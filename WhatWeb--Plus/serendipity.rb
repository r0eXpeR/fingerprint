Plugin.define do
name "Serendipity"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Brendan Coles <bcoles at gmail dot com>", 

  "Andrew Horton", 

  "Napz", 

]
version "0.3"
description "Serendipity - a PHP Weblog/Blog software. Serendipity is a PHP-powered weblog application which gives the user an easy way to maintain an online diary, weblog or even a complete homepage."
website "http://www.s9y.org"
dorks [
'"powered by Serendipity"',
'"My weblog is proudly powered by Serendipity"'
]
matches [
    {:offset=>1, :search=>'body', :regexp=>/Serendipity v\.([\d.]+)/},
    {:regexp=>/Serendipity(?: v\.([\d.]+))?/, :search=>'body',:offset=>1  },
    {:text=>'<div class="copyright">Powered by <a href="http://www.s9y.org" title="a PHP Weblog/Blog software">Serendipity</a>'},
    {:text=>'<div id="serendipityLeftSideBar">'},
    {:text=>'<p>Powered by <a href="http://www.s9y.org" target="_blank">Serendipity</a>'},
    {:text=>'serendipity_entryFooter'},
    {:text=>'serendipity_entry_author_Admin'},
    {:text=>'serendipity_entry_body'},
    {:version=>/<meta name="Powered-By" content="Serendipity v.([^"]+)" \/>/i},
    {:version=>/My weblog is proudly powered by <a href="http:\/\/www.s9y.org">Serendipity ([^<]+)<\/a>.<br \/>/}
]
passive do
	m=[]
	m << { :name=>'x-serendipity-interfacelang' } unless @headers['x-serendipity-interfacelang'].nil?
	m << { :name=>'x-serendipity-contentlang' } unless @headers['x-serendipity-contentlang'].nil?
	m << { :name=>'x-blog: serendipity' } if @headers['x-blog'] =~ /^Serendipity$/
	m
end
aggressive do
	m=[]
files=[
{ :md5=>'79c1b6a769935747118a677ef7aa3982', :version=>'0.3.x - 0.5.x', :path=>'serendipity_editor.js' },
{ :md5=>'74eaef55e0951e216421bb01cc92082a', :version=>'0.6-pl3', :path=>'serendipity_editor.js' },
{ :md5=>'c9fd7b9fb103678b44a922bffda02fea', :version=>'0.7.x', :path=>'serendipity_editor.js' },
{ :md5=>'f1751045478704d6c4bc2cf0207cbb9b', :version=>'0.8', :path=>'serendipity_editor.js' },
{ :md5=>'d2e8aba1ed100c6ec1e36101b5aa24e4', :version=>'0.8.1', :path=>'serendipity_editor.js' },
{ :md5=>'36c4f911d9ca31a272203187d1878957', :version=>'0.8.2', :path=>'serendipity_editor.js' },
{ :md5=>'74c5736300bbfd11429858e990d7e864', :version=>'0.8.3', :path=>'serendipity_editor.js' },
{ :md5=>'8f21fdb6a1d9b9ceacc06ee627389bde', :version=>'0.8.4', :path=>'serendipity_editor.js' },
{ :md5=>'9c484f7fe5b24c1d9a6332e67b6fbbd5', :version=>'0.8.5', :path=>'serendipity_editor.js' },
{ :md5=>'802d4efbc2f518811cc6ab0b80c16d31', :version=>'0.9.x', :path=>'serendipity_editor.js' },
{ :md5=>'e3e676fdc4554fe78132db6622548363', :version=>'1.0', :path=>'serendipity_editor.js' },
{ :md5=>'970ac406dfd81ad78f3e09a75b423682', :version=>'1.0.1 - 1.0.4a', :path=>'serendipity_editor.js' },
{ :md5=>'20c00879135d75de0e0e1fb787e0ccc6', :version=>'1.1.x', :path=>'serendipity_editor.js' },
{ :md5=>'6f53ddcda7b56d71424473cb336452af', :version=>'1.2.x', :path=>'serendipity_editor.js' },
{ :md5=>'28268a9cfaa70503d5240e871be8f323', :version=>'1.3.x - 1.4.x', :path=>'serendipity_editor.js' },
{ :md5=>'4f641152c6e24d29816e839c361c2b88', :version=>'1.5.x', :path=>'serendipity_editor.js' },
]
	to_download = files.map {|x| x[:path]}.sort.uniq
	downloads={}
	to_download.each do |d|
		target = URI.join(@base_uri.to_s,d).to_s	
		status,url,ip,body,headers=open_target(target)
		downloads[d] = {:md5sum=>Digest::MD5.hexdigest(body).to_s}	
	end
	version=nil
	files.each do |thisfile|
		unless downloads[thisfile[:path]].nil?
			version=thisfile[:version] if downloads[thisfile[:path]][:md5sum] == thisfile[:md5]
		end
	end
	unless version.nil?
		m << {:name=>"md5 sums of files", :version=>version}
	end
	m
end
end
