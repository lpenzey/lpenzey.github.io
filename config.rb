# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end


# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css
  # Relative assets needed to deploy to Github Pages
  # activate :relative_assets
  # set :site_url, “/lpenzey”
  # Minify Javascript on build
  # activate :minify_javascript
end

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch = ‘master’
  deploy.build_before = true
end

activate :directory_indexes

set :images_dir, ‘images’

# activate :blog do |blog|
#   blog.prefix = “blog”
# end

# set :site_url, “”
