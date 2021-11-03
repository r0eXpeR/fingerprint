##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "Empire-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", # 2010-08-04
]
version "0.1"
description "Open source CMS"
website "http://www.phome.net/"

# 371 results for "powered by EmpireCMS" @ 2010-08-04

# Dorks #
dorks [
'"powered by EmpireCMS"'
]

matches [
{:text=>' - Powered by EmpireCMS</title>' },
{:text => 'Powered by EmpireCMS'   },
{:url => '/d/file/index.html', :text => 'empirecms'   },
{:url => '/d/file/p/index.html', :text => 'empirecms'   },
{:url => '/d/js/acmsd/index.html', :text => 'empirecms'   },
{:url => '/d/js/class/index.html', :text => 'empirecms'   },
{:url => '/d/js/js/hotnews.js', :text => 'empirecms'   },
{:url => '/d/js/pic/index.html', :text => 'empirecms'   },
{:url => '/d/js/vote/index.html', :text => 'empirecms'   },
{:url => '/d/txt/index.html', :text => 'empirecms'   },
{:url => '/e/admin/adminstyle/1/page/about.htm', :text => 'empirecms'   },
{:url => '/e/admin/ecmseditor/images/blank.html', :text => 'empirecms'   },
{:url => '/e/admin/ecmseditor/infoeditor/epage/images/blank.html', :text => 'empirecms'   },
{:url => '/e/admin/user/data/certpage.txt', :text => 'empirecms'   },
{:url => '/e/data/ecmseditor/images/blank.html', :md5 => '5496732c4cbdaed4423d18ffc2f74267'   },
{:url => '/e/data/ecmseditor/images/blank.html', :text => 'empirecms'   },
{:url => '/e/data/fc/index.html', :text => 'empirecms'   },
{:url => '/e/data/html/cjhtml.txt', :text => 'empirecms'   },
{:url => '/e/data/template/gbooktemp.txt', :text => 'empirecms'   },
{:url => '/e/data/tmp/cj/index.html', :text => 'empirecms'   },
{:url => '/e/extend/index.html', :text => 'empirecms'   },
{:url => '/e/install/data/empirecms.com.sql', :text => 'empirecms'   },
{:url => '/e/tasks/index.html', :text => 'empirecms'   },
{:url => '/e/tool/feedback/temp/test.txt', :text => 'empirecms'   },
{:url => '/e/tool/feedback/temp/test.txt', :md5 => '8eaf3eb0a904b0507199a644d1026fd7'   },
{:url => '/html/index.html', :text => 'empirecms'   },
{:url => '/html/sp/index.html', :text => 'empirecms'   },
{:url => '/install/data/empiredown.com.sql', :text => 'empirecms'   },
{:url => '/robots.txt', :md5 => '1e5e773092126eadebd896fa7fb1e6e4'   },
{:url => '/robots.txt', :md5 => '35a7d501a562a638055b04e267def098'   },
{:url => '/robots.txt', :md5 => 'bfedf87aeb5035d6fb8aacc3f54265de'   },
{:url => '/robots.txt', :md5 => 'd4c2ef34e9b27942aa80bd7a01f03a24'   },
{:url => '/robots.txt', :text => 'empirecms'   },
{:url => '/s/index.html', :text => 'empirecms'   },
{:url => '/search/index.html', :text => 'empirecms'   },
{:url => '/t/index.html', :text => 'empirecms'   },
]

end

