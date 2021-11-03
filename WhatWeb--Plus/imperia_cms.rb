Plugin.define do
    name "imperia_cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<imp:live-info sysid="[0-9a-f-]+"(?: node_id="[0-9.]*")? *\.>/  },
    { :regexp => /^IMPERIA ([0-9.]{2,3})/,:offset => 1, :search => 'body'  }
]
end