Plugin.define do
    name "erlang" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Erlang( OTP.(?:[\d.ABR-]+))?/  }
]
end