source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby
  gem "therubyracer", "~> 0.11.0"
  gem "libv8", "~> 3.11.8.12"
  gem "turbo-sprockets-rails3"

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'jquery-ui-rails', "~> 2.0.2"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
 gem 'unicorn'

# Deploy with Capistrano
 gem 'capistrano'

# To use debugger
# gem 'debugger'

#gem 'spree_reviews', :git => 'git://github.com/spree/spree_reviews.git'

gem 'spree', '1.3.1'
#gem 'spree', '1.3', :path => '../spree'
#gem 'spree_fancy', :path => '../spree_fancy'

gem 'spree_gateway', :github => 'spree/spree_gateway', :branch => '1-3-stable'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '1-3-stable'
gem 'spree_recently_viewed', :git => 'git://github.com/spree/spree_recently_viewed.git'
gem "spree_product_zoom", :git => "git://github.com/spree/spree_product_zoom.git"
gem 'spree_static_content', :git => 'git://github.com/spree/spree_static_content.git'
gem 'spree_slider'
gem "spree_custom_assets", :path => "./spree_custom_assets"
gem "spree_taxon_images", :path => "./spree_taxon_images"

group :development do
  gem "capistrano",         require: false
  gem 'capistrano-recipes', require: false
  gem 'capistrano_colors',  require: false
  gem "rvm-capistrano"
  gem "quiet_assets", "~> 1.0.1"
end
