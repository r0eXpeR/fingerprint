Plugin.define do
    name "网神防火墙" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:search=>"headers", :text=>'host_for_cookie'},
    {:text=>'admin/js/virtual_keyboard.js'},
    {:text=>'css/lsec/login.css'},
    {:text=>'secgate 3600'}
]
end