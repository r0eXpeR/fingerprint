Plugin.define do
    name "umail" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/webmail/admin/include/language_tmp.js', :text => 'U-Mail'   },
    { :url => '/webmail/client/resource/style/umail_tab.css', :text => 'U-Mail'   },
    { :url => '/webmail/images/login9/login_11.gif', :md5 => '784a5a44d5bc3e9aa66fc4aa27c3cc2e'   }
]
end