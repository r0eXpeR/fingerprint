Plugin.define do
    name "smartstore_page_builder" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<section[^>]+class="g-stage/  }
]
end