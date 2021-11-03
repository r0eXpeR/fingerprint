Plugin.define do
name "Donations-Cloud"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The donations cloud is something like a tag cloud, only that it displays . donations. The more a person donates, the larger the link to his/her website will be."
website "http://www.zirona.com/software/wordpress-donations-cloud/"
dorks [
'"powered by Donations Cloud"'
]
matches [
    {:regexp=>/<p id='dc_credits'>powered by <a href=[\'|\"]+http:\/\/www.zirona.com\/software\/[^>]+>Donations Cloud<\/a><\/p>/i},
    {:text=>"<form action='https://www.paypal.com/cgi-bin/webscr' method='post' id='dc_paypal_form' onsubmit='if (!dc_checkform()) return false;'>"},
    {:text=>"if (dc_get('pp_amount').value == '') { alert(\"Please enter a donation amount.\"); return false; }"},
    {:text=>"wp-content/plugins/donationscloud//donationscloud.css' type='text/css' media='screen' />"},
    {:text=>'/donationscloud.css'}
]
end
