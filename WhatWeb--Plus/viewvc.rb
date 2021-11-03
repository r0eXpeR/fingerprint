Plugin.define do
name "ViewVC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.3"
description "ViewVC (formerly known as ViewCVS) is a browser interface for CVS and Subversion version control repositories. It generates templatized HTML to present navigable directory, revision, and change log listings. It can display specific versions of files as well as diffs between those versions."
website "http://viewvc.org/"
dorks [
'"Powered by ViewVC"'
]
matches [
{ :text => '<title>ViewVC Repository Listing</title>' },
{ :text => '<!-- ViewVC :: http://www.viewvc.org/ -->' },
{ :text => '<!-- ViewCVS -- http://viewcvs.sourceforge.net/' },
{ :version => %r{Powered by <a href="http://(viewcvs.sourceforge.net|viewvc.tigris.org)/">(ViewCVS|ViewVC) ([^<]+)</a></td>}, :offset => 2 },
{ :version => /<meta name="generator" content="View(VC|CVS) ([^"]+)"/, :offset => 1 }
]
aggressive do
  m=[]
  random_fname = rand(36 ** 6).to_s(36)
  if @base_uri.path =~ %r{^(.*/(viewvc|viewcvs|viewvc\.cgi|viewcvs\.cgi))}i
    target_url = "#{$1}/*docroot*/" + random_fname
  end
  unless target_url.nil?
    target = URI.join(@base_uri.to_s, target_url).to_s
    status,url,ip,body,headers = open_target(target)
    file_path = body.scan(/\(\[Errno 2\] No such file or directory: '([^']+)#{random_fname}'\)/).flatten.first
    unless file_path.nil?
      m << { :filepath => file_path }
    end
  end
  m
end
end
