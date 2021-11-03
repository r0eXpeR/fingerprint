Plugin.define do
    name "sjsws__oiws" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Oracle-iPlanet-Web-Server'   },
    { :search => "headers", :text => 'Sun-Java-System-Web-Server'   }
]
end