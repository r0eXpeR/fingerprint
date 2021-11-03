Plugin.define do
    name "docker" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '-1814887000'    },
    { :mmh3 => '1937209448'    },
    { :regexp => /<!-- This comment is expected by the docker HEALTHCHECK  -->/   }
]
end