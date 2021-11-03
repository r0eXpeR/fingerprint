Plugin.define do
name "PHPWind"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BBS [Chinese]"
website "http://www.phpwind.net/"
dorks [
'"Powered by PHPWind"'
]
matches [
    {:certainty=>25, :regexp=>/<title>[^<]+ - (powered by phpwind.net|Powered by PHPWind)<\/title>/},
    {:offset=>1, :search=>'body', :regexp=>/^phpwind(?: v([0-9-]+))?/},
    {:regexp=>/(?:Powered|Code) by <a href="[^"]+phpwind\.net/},
    {:text=>'Powered by <a href="http://www.phpwind.net/" target="_blank"><b>PHPWind</b></a>'},
    {:text=>'Powered by phpwind'},
    {:text=>'content="phpwind'},
    {:url=>'/AUTHORS', :text=>'phpwind'},
    {:url=>'/LICENSE', :text=>'phpwind'},
    {:url=>'/aCloud/index.html', :text=>'phpwind'},
    {:url=>'/admin/safefiles.md5', :text=>'phpwind'},
    {:url=>'/api/agent.html', :text=>'phpwind'},
    {:url=>'/apps/diary/template/m_diary_bottom.htm', :text=>'phpwind'},
    {:url=>'/apps/groups/template/m_header.htm', :text=>'phpwind'},
    {:url=>'/apps/stopic/template/stopic.htm', :text=>'phpwind'},
    {:url=>'/apps/weibo/template/m_weibo_bottom.htm', :text=>'phpwind'},
    {:url=>'/conf/md5sum', :text=>'phpwind'},
    {:url=>'/connexion/template/custom_weibo_template.htm', :text=>'phpwind'},
    {:url=>'/data/lang/zh_cn.js', :text=>'phpwind'},
    {:url=>'/favicon.ico', :md5=>'b3bcd095c2fcea687203a9d2d1e6cce1'},
    {:url=>'/favicon.ico', :md5=>'cfc440185d836a969827f0fd52d38e03'},
    {:url=>'/hack/app/info.xml', :text=>'phpwind'},
    {:url=>'/html/js/index.html', :text=>'phpwind'},
    {:url=>'/humans.txt', :text=>'phpwind'},
    {:url=>'/images/admin/login/logo.png', :md5=>'b11431ef241042379fee57a1a00f8643'},
    {:url=>'/js/magic.js', :text=>'phpwind'},
    {:url=>'/lang/wind/admin/admin.htm', :text=>'phpwind'},
    {:url=>'/licence.txt', :md5=>'1d7ac45421087cb8faaf8a83a8df8780'},
    {:url=>'/licence.txt', :md5=>'a9f136e428c5b24cf103f08ac17abbc7'},
    {:url=>'/licence.txt', :text=>'phpwind'},
    {:url=>'/m/template/footer.htm', :text=>'phpwind'},
    {:url=>'/mode/area/js/adminview.js', :text=>'phpwind'},
    {:url=>'/phpwind/lang/wind/admin/admin.htm', :text=>'phpwind'},
    {:url=>'/phpwind/licence.txt', :text=>'phpwind'},
    {:url=>'/recommend.html', :text=>'phpwind'},
    {:url=>'/res/css/admin_layout.css', :text=>'phpwind'},
    {:url=>'/robots.txt', :text=>'phpwind'},
    {:url=>'/src/extensions/demo/Manifest.xml', :text=>'phpwind'},
    {:url=>'/src/extensions/demo/resource/editorApp.js', :text=>'phpwind'},
    {:url=>'/styles/english/template/admin_english/admin.htm', :text=>'phpwind'},
    {:url=>'/template/config/admin/config_run.htm', :text=>'phpwind'},
    {:url=>'/themes/forum/default/css/dev/forum.css', :text=>'phpwind'},
    {:url=>'/u/themes/default/footer.htm', :text=>'phpwind'},
    {:url=>'/wind.sql', :text=>'phpwind'},
    {:url=>'/wind/http/mime/mime', :text=>'phpwind'},
    {:url=>'/wind/readme', :text=>'phpwind'},
    {:url=>'/windid/res/css/admin_layout.css', :text=>'phpwind'},
    {:url=>'/windid/res/images/admin/login/bg.jpg', :md5=>'3319b5e84b1da72c27ec4c926a83b910'},
    {:url=>'/windid/res/images/admin/login/logo.png', :md5=>'965b519d7266c0dfd4d0b9d6e40338ef'},
    {:url=>'/windid/res/images/admin/login/logo.png', :md5=>'9f49bb571729b7b82ed9bcd2b4344e9f'},
    {:url=>'/windid/res/js/dev/pages/admin/auth_manage.js', :text=>'phpwind'},
    {:url=>'/windid/res/js/dev/wind.js', :md5=>'7854bb0301cdc9dfefbe190356553204'},
    {:url=>'/windid/res/js/dev/wind.js', :text=>'phpwind'},
    {:version=>/<meta name="generator" content="PHPWind [v]?([^"^\(]+)(\([\d]+\))?" \/>/i},
    {:version=>/Powered by <a href="http:\/\/www.phpwind.net\/" target="_blank"><b>PHPWind<\/b><\/a>[\s]*<a href="http:\/\/www.phpwind.net\/" target="_blank"><b style="color:#FF9900">v([\d\.]+)<\/b><\/a>/}
]
end
