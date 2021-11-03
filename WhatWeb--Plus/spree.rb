Plugin.define do
    name "spree" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:<link[^>]*.assets.store.all-[a-z\d]{32}\.css[^>]+>|<script>\s*Spree\.(?:routes|translations|api_key))/  }
]
end