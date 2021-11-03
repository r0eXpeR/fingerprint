Plugin.define do
    name "ibm_tivoli_storage_manager" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /TSM_HTTP(?:.([\d.]+))?/  }
]
end