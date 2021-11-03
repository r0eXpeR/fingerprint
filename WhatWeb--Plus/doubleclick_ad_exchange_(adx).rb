Plugin.define do
    name "doubleclick_ad_exchange_(adx)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /tpc\.googlesyndication\.com.safeframe/, :search => 'body'  },
    { :search => 'body', :regexp => /googlesyndication\.com.*abg\.js/  },
    { :search => 'body', :regexp => /googlesyndication\.com.pagead.show_ads\.js/  }
]
end