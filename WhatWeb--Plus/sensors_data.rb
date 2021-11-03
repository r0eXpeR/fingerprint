Plugin.define do
    name "sensors_data" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /sensorsdata/  }
]
end