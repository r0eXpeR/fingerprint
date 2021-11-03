Plugin.define do
    name "powergap" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a[^>]+title="POWERGAP/  },
    { :regexp => /<input type="hidden" name="shopid/  }
]
end