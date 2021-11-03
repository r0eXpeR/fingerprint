Plugin.define do
  name "PHP-Slim"
  authors [
    "Marcelo Gimenes <marcelo.gimenes.oliveira@gmail.com>"
  ]
  version "0.2"
  description "Slim Framework"
  website "https://www.slimframework.com/"
  matches [
    { :name => 'Slim < 4.0', 
      :text => "to ensure your URL is spelled correctly. If all else fails, you can",
      :url => randstr()},
    { :name => 'Slim > 4.0', 
      :text => "The requested resource could not be found. Please verify the URI and try again.",
      :url => randstr()}
  ] 
end
