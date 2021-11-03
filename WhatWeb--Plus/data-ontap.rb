Plugin.define do
name "Data-ONTAP"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Data ONTAP - fully virtualized data management environment. Data ONTAP provides a virtualized data environment with a simple interface that enables you to create virtual storage volumes, make changes quickly, and achieve superior storage utilization."
website "http://www.netapp.com/us/products/platform-os/data-ontap/"
matches [
    {:search=>"headers", :text=>'Data ONTAP'},
    {:search=>"headers[server]", :version=>/^Data ONTAP\/\/?([^\s]+)$/}
]
end
