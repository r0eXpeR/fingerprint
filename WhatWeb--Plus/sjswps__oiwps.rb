Plugin.define do
    name "sjswps__oiwps" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Oracle-iPlanet-Proxy-Server'   },
    { :search => "headers", :text => 'Sun-Java-System-Web-Proxy-Server'   }
]
end