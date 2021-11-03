Plugin.define do
name "Dell-Remote-Access-Controller"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Dell Remote Access Controller or DRAC, an interface card from Dell Inc, provides out-of-band management facilities. The controller has its own processor, memory, network connection, and access to the system bus. Key features include power management, virtual media access and remote console capabilities, all available through a supported web browser or command line interface."
website "http://www.dell.com/content/topics/global.aspx/power/en/ps2q02_bell?c=us&l=en"
matches [
    {:search=>"headers", :text=>'RAC_ONE_HTTP'},
    {:search=>"headers[server]", :regexp=>/^RAC_ONE_HTTP ([\d\.]+)$/},
    {:text=>'/cgi-bin/webcgi/ssologin'},
    {:url=>"/cgi-bin/webcgi/ssologin", :string=>/<CARD_IP>([^\s]+)<\/CARD_IP>/, :version=>"5"},
    {:url=>"/index.html", :md5=>"3fbe4d5548bdfcdf7cb98286380e9c20"},
    {:version=>/<span class="data-area-page-title">The DRAC ([\d\.]+) Web-based interface requires JavaScript to display content correctly\.<\/span>/}
]
end
