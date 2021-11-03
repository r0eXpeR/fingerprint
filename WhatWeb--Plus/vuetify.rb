Plugin.define do
    name "vuetify" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div data-app[^>]+class="v-application/  }
]
end