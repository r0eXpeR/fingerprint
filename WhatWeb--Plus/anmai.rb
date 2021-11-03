Plugin.define do
    name "anmai" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/anmai/Js/CheckForm.js', :text => 'CopyRight By AnMai.net'   },
    { :url => '/anmai/Js/comm.js', :md5 => '5eedc1338da8eb727b338f3ed875eb2a'   }
]
end