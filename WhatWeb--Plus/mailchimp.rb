Plugin.define do
    name "mailchimp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :certainty => 20, :regexp => /<input [^>]*id="mc-email/  },
    { :regexp => /<!-- Begin MailChimp Signup Form -->/  },
    { :regexp => /<form [^>]*data-mailchimp-url/  },
    { :regexp => /<form [^>]*id="mc-embedded-subscribe-form/  },
    { :regexp => /<form [^>]*name="mc-embedded-subscribe-form/  },
    { :regexp => /s3\.amazonaws\.com.downloads\.mailchimp\.com.js.mc-validate\.js/, :search => 'body'  },
    { :search => 'body', :regexp => /cdn-images\.mailchimp\.com.[^>]*\.css/  },
    { :search => 'body', :regexp => /chimpstatic\.com.mcjs-connected/  },
    {:offset => 1, :search => 'body', :regexp => /mailchimp-for-wp.assets.js.forms\.min\.js(?:\?ver=([\d.]+))?/  },
    {:offset => 1, :search => 'body', :regexp => /mailchimp-woocommerce-public\.min\.js(?:\?ver=([\d.]+))?/  }
]
end