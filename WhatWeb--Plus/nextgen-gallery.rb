Plugin.define do
name "NextGEN-Gallery"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "NextGEN Gallery is a full integrated Image Gallery plugin for WordPress with dozens of options and features."
website "http://nextgen-gallery.com"
matches [
{ :regexp=>/<link rel='stylesheet' id='NextGEN-css'  href='[^']*\/wp-content\/themes\/default_ngg\/nggallery.css\?ver=[\d\.]+' type='text\/css' media='screen' \/>/, :string=>"Wordpress" },
{ :regexp=>/<link rel='stylesheet' id='shutter-css'  href='[^']*\/wp-content\/plugins\/nextgen-gallery\/shutter\/shutter-reloaded.css\?ver=[\d\.]+' type='text\/css' media='screen' \/>/, :string=>"Wordpress" },
{ :regexp=>/<link rel='stylesheet' id='galleryview-css'  href='[^']*\/wp-content\/plugins\/nggGalleryview\/galleryview.css\?ver=[\d\.]+' type='text\/css' media='screen' \/>/, :string=>"Wordpress" },
{ :version=>/<meta name='NextGEN' content='([\d\.]+)' \/>/, :string=>"Wordpress" },
]
end
