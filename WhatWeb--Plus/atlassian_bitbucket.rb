Plugin.define do
    name "atlassian_bitbucket" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<li>Atlassian Bitbucket <span title="[a-z0-9]+" id="product-version" data-commitid="[a-z0-9]+" data-system-build-number="[a-z0-9]+"> v([\d.]+)</  },
    { :search => 'body', :regexp => /Bitbucket/  }
]
end