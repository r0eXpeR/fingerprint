Plugin.define do
    name "wdcp_cloud_host_management_system" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:mmh3=>'1786752597'},
    {:mmh3=>'255892555'},
    {:text=>'lanmp_wdcp 安装成功'},
    {:text=>'wdcp服务器'},
    {:url=>'/iProber2.php', :text=>'wdcp'},
    {:url=>'/images/lnamp.gif', :md5=>'81057dac33352f7b47827b795290f613'}
]
end