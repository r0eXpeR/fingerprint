Plugin.define do
    name "cisco_ace_xml_gateway_waf" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers', :text => 'ACE XML Gateway'  }
]
end