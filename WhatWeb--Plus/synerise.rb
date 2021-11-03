Plugin.define do
    name "synerise" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /snrcdn\.net.sdk.(3\.0).synerise-javascript-sdk\.min\.js/  }
]
end