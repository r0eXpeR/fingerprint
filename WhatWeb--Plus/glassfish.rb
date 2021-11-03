Plugin.define do
    name "glassfish" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: GlassFish Server'    },
    { :search => 'headers[server]',:offset => 1, :regexp => /GlassFish(?: Server)?(?: Open Source Edition)?(?: ?.?([\d.]+))?/   },
    { :url => '/theme/com/sun/webui/jsf/suntheme/images/login/gradlogtop.jpg', :md5 => '0ebf4645c6dbbe85501dc7e27bb4789a'    }
]
end