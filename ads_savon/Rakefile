desc 'Package the Google Ads Savon library into a gem file.'
task :build do
  result = system('/usr/bin/env gem build google-ads-savon.gemspec')
  raise 'Build failed.' unless result
end
