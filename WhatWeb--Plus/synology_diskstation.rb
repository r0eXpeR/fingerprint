Plugin.define do
    name "synology_diskstation" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :mmh3 => '149371702'      },
    { :mmh3 => '149371702'    },
    { :regexp => /<noscript><div class='syno-no-script/    },
    { :regexp => /^DiskStation provides a full-featured network attached storage/, :search => 'body'    },
    { :regexp => /webapi.entry\.cgi\?api=SYNO\.(?:Core|Filestation)\.Desktop\./, :search => 'body'    },
    { :search => 'body', :regexp => /Synology DiskStation/    },
    { :text => 'SYNO.SDS.Session'      },
    { :text => 'Synology DiskStation'      }
]
end