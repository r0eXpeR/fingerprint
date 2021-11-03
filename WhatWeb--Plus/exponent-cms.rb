Plugin.define do
name "Exponent-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Out of thebox, Exponent Content Management System touts a feature-rich assortment of tools to assist you in your online content management. Requirements: Apache 1.3, 2.0, or 2.2, PHP 4.4 or later, PHP GD Image Library extension, MySQL 4.1.22 or later"
website "http://www.exponentcms.org/index.php?section=116"
dorks [
'"powered by Exponent CMS"'
]
matches [
    {:text=>'<a href="http://www.exponentcms.org">Powered by Exponent CMS</a>'},
    {:text=>'<meta name="Generator" content="Exponent Content Management System'},
    {:text=>'Powered by <a href="http://www.exponentcms.org">Exponent CMS</a>'},
    {:text=>'Powered by Exponent CMS'},
    {:text=>'content="Exponent Content Management System'},
    {:version=>/<meta name="Generator" content="Exponent Content Management System - ([^\"]+)"/}
]
end
