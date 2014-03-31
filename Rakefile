task :default => :html

desc "Run Ruql with HtmlForm renderer and HTML embed (with JavaScript validation)"
task :html do
  sh "ruql 090414.rb HtmlForm -t ullform.html.erb > html/090414.html"
end
#sh "ruql 090414.rb HtmlForm -c estilo.css -j prueba.js -h mathjax.html -t ullform.html.erb > html/090414.html"
# -j does not work when template is specified

desc "Run Ruql with HtmlForm renderer with multiple JavaScript"
task :mjs do
  sh "ruql 090414.rb HtmlForm -j prueba.js -j prueba.js > html/file.html"
end

desc "Run Ruql with HtmlForm renderer and CSS"
task :css do
  sh "ruql 090414.rb HtmlForm -c estilo.css -h mathjax.html > html/file.html"
end

desc "Run Ruql with HtmlForm renderer and multiple CSS"
task :mcss do
  sh "ruql 090414.rb HtmlForm -c estilo.css -c estilo.css > 090414.html"
end

