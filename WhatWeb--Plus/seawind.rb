Plugin.define do
    name "seawind" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/adminpanel/css/tablesorter.css', :text => 'table.tablesorter thead tr .headerSortDown, table.tablesorter thead tr .headerSortUp {'   },
    { :url => '/css/demo.css', :text => 'border:1px solid rgb(199,199,199);'   }
]
end