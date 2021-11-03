Plugin.define do
    name "schedule_engine" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /webchat.scheduleengine.net/, :search => 'body'  }
]
end