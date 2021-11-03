Plugin.define do
	name "Bootstrap"
	authors [
        "Janosch Maier @Phylu", 

	]
	version "0.3"
	description "Bootstrap is an open source toolkit for developing with HTML, CSS, and JS. "
	website "https://getbootstrap.com/"
matches [
    {:offset=>1, :regexp=>/<link[^>]* href=[^>]*?bootstrap(?:[^>]*?([0-9a-fA-F]{7,40}|[\d]+(?:.[\d]+(?:.[\d]+)?)?)|)[^>]*?(?:\.min)?\.css/},
    {:offset=>1, :regexp=>/<style>\s+.\*!\s+\* Bootstrap v(\d\.\d\.\d)/},
    {:offset=>1, :regexp=>/bootstrap(?:[^>]*?([0-9a-fA-F]{7,40}|[\d]+(?:.[\d]+(?:.[\d]+)?)?)|)[^>]*?(?:\.min)?\.js/, :search=>'body'},
    {:regexp=>/<link [^>]*bootstrap/},
    {:regexp=>/<script [^>]*bootstrap/},
    {:text=>'bootstrap.css'},
    {:text=>'bootstrap.min.css'},
    {:url=>"bootstrap/css/bootstrap.bundle.css", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"bootstrap/css/bootstrap.bundle.min.css", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"bootstrap/css/bootstrap.css", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"bootstrap/css/bootstrap.min.css", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"bootstrap/js/bootstrap.bundle.js", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"bootstrap/js/bootstrap.bundle.min.js", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"bootstrap/js/bootstrap.js", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"bootstrap/js/bootstrap.min.js", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"css/bootstrap.bundle.css", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"css/bootstrap.bundle.min.css", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1 },
    {:url=>"css/bootstrap.css", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"css/bootstrap.min.css", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"js/bootstrap.bundle.js", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"js/bootstrap.bundle.min.js", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"js/bootstrap.js", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:url=>"js/bootstrap.min.js", :version=>/Bootstrap ([vV])?([0-9\.]+)/, :offset=>1},
    {:version=>/bootstrap(\.min)?\.css\?ver=([0-9\.]+)['"]/, :offset=>1},
    {:version=>/bootstrap(\.min)?\.js\?ver=([0-9\.]+)['"]/, :offset=>1},
    {:version=>/bootstrap-([0-9\.]+)(\.min)?\.css/, :offset=>0},
    {:version=>/bootstrap-([0-9\.]+)(\.min)?\.js/, :offset=>0},
    {:version=>/bootstrap\/([0-9\.]+)(\/css)?\/bootstrap(\.min)?\.css/, :offset=>0},
    {:version=>/bootstrap\/([0-9\.]+)(\/js)?\/bootstrap(\.min)?\.js/, :offset=>0}
]
end
