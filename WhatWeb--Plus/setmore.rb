Plugin.define do
    name "setmore" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /my\.setmore\.\w+./, :search => 'body'  },
    { :search => 'body', :regexp => /.setmore-appointments.script./  }
]
end