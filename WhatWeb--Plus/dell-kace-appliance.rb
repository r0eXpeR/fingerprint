Plugin.define do
name "Dell-KACE-Appliance"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Dell KACE System Management Appliance"
website "http://www.kace.com/products/overview"
matches [
    {:search=>"headers", :text=>'x-dellkace-'},
    {:search=>"headers[x-dellkace-appliance]", :model=>/^(.+)$/},
    {:search=>"headers[x-dellkace-host]", :string=>/^(.+)$/},
    {:search=>"headers[x-dellkace-version]", :version=>/^(.+)$/},
    {:search=>"headers[x-kbox-version]", :version=>/^(.+)$/},
    {:search=>"headers[x-kbox-webserver]", :string=>/^(.+)$/},
    {:url=>"/common/about.php", :version=>/<b>K1000 Systems Management Appliance<\/b> <b>v([^\s^<]+)<\/b>/}
]
end
