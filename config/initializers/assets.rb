# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.paths << "#{Rails}/vendor/assets/fonts"


# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

Rails.application.config.assets.precompile += %w( application.js )
Rails.application.config.assets.precompile += %w( empresario.js )
Rails.application.config.assets.precompile += %w( welcome.js )
Rails.application.config.assets.precompile += %w( searchSite.js )
Rails.application.config.assets.precompile += %w( questions.js )

Rails.application.config.assets.precompile += %w( application.css )
Rails.application.config.assets.precompile += %w( empresario.scss )
Rails.application.config.assets.precompile += %w( shop-homepage.css )
Rails.application.config.assets.precompile += %w( questions.scss )
Rails.application.config.assets.precompile += %w( font-awesome.min.css )
Rails.application.config.assets.precompile += %w( font-awesome.css )
Rails.application.config.assets.precompile += %w( company.scss )
Rails.application.config.assets.precompile += %w( morris.css )
Rails.application.config.assets.precompile += %w( sb-admin-rtl.css )




