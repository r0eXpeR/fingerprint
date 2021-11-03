Plugin.define do
name "Open-Graph-Protocol"
authors [
  "Caleb Anderson",

  "Brendan Coles <bcoles@gmail.com> ",
]
version "0.3"
description "The Open Graph protocol enables you to integrate your Web pages into the social graph. It is currently designed for Web pages representing profiles of real-world things . things like movies, sports teams, celebrities, and restaurants. Including Open Graph tags on your Web page, makes your page equivalent to a Facebook Page."
matches [
{ :regexp=>/<meta[^>]+property="og:title"[^>]*>/i },
{ :version=>/<meta[^>]+property="og:type"[^>]+content="([^"^>]+)"/ },
{ :account=>/<meta[^>]+property="fb:admins"[^>]+content="([^"^>]+)"/ },
{ :module=>/<meta[^>]+property="fb:app_id"[^>]+content="([^"^>]+)"/ },
]
end
