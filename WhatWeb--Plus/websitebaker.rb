Plugin.define do
    name "websitebaker" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /WebsiteBaker/, :search => 'body'   },
    { :url => '/include/captcha/readme.txt', :text => 'websitebaker'    },
    { :url => '/include/jscalendar/img.gif', :md5 => 'c1e5255bd358fcd5a0779a0cc310a2fe'    },
    { :url => '/modules/droplets/img/droplet.png', :md5 => 'bd3deaad1a7bcb3a1e920b1da7d9ac0f'    },
    { :url => '/modules/output_filter/js/mdcr.js', :text => 'websitebaker'    }
]
end