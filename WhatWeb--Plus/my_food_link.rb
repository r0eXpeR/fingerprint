Plugin.define do
    name "my_food_link" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<a href="https:..www.myfoodlink.com.au/  },
    { :regexp => /<div class='mfl-made-by-myfoodlink'>/  }
]
end