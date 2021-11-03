Plugin.define do
    name "webxpay" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /Powered by <a href="https:..www\.webxpay\.com">WEBXPAY</  }
]
end