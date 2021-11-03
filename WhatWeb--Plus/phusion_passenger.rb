Plugin.define do
    name "phusion_passenger" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Phusion Passenger ([\d.]+)/  },
    {:offset => 1, :search => 'headers[x-powered-by]', :regexp => /Phusion Passenger ?([\d.]+)?/  }
]
end