require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://derkjanssenpoetrycontest.com'
SitemapGenerator::Sitemap.create do
  add '/index', :changefreq => 'daily', :priority => 0.9
  add '/bio', :changefreq => 'weekly', :priority => 0.4
  add '/rules', :changefreq => 'weekly', :priority => 0.7
  add '/submit', :changefreq => 'weekly', :priority => 0.8
  add '/', :changefreq => 'weekly', :priority => 0.9
end
SitemapGenerator::Sitemap.ping_search_engines
