Plugin.define do
    name "梭子鱼防火墙" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/cgi-mod/header_logo.cgi'   },
    { :text => 'http://www.barracudanetworks.com?a=bsf_product" class="transbutton'   }
]
end