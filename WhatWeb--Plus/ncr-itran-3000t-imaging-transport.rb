Plugin.define do
name "NCR-iTRAN-3000t-Imaging-Transport"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "A full function, image-based table top check imaging and payment processing device"
website "http://www.ncr.com/products-and-services/payment-and-imaging/check-and-document-imaging/low-to-mid-volume-item-processing/ncr-itran-3000t-imaging-transport"
matches [
{ :version=>/<html><title>Infinity Site Configuration<\/title>\s+<body bgcolor=white link=blue text=black vlink=maroon>\s+<center>\s+<p align=right>Version: ([^\s^<]+)<\/p>/ },
{ :version=>/<html>\s+<title>Main Menu<\/title>\s+<body bgcolor=white link=blue text=black vlink=maroon>\s+<p align=right>Version: ([^\s^<]+)<\/p>/ },
{ :string=>/<h1><i><font color=red>Infinity<\/font><\/i> Main Menu<\/h1>\s+<b>([^<]+)<\/b>/ },
{ :url=>"/setup.php", :account=>/<input type=hidden name=setupItem\[\] value="\$cpassword"><input type=hidden name=setupTitle\[\] value="iSite Controller Password"><input name=setupValue\[\] value="([^\"^>]+)" size=40><\/td><\/tr>/ },
]
end
