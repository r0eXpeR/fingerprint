Plugin.define do
    name "tailwindcss" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /<link[^>]+?href="[^"]+tailwindcss[@|.](?:\^)?([\d.]+)(?:.[a-z]+)?.(?:tailwind|base|components|utilities)(?:\.min)?\.css/  }
]
end