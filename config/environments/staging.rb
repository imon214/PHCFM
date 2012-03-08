Patchworks::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb
  
  #FIXME: not working since svn on mnl1001lin does not have ra_dav support
  #config.svn_patch_repo = 'http://mnl1001lin/repos/patch'
  # config.svn_patch_repo = 'file:///services/subversion/patch'
  # config.svn_common_repo = 'file:///services/subversion/patch_common'
  # config.patch_files_dir = '/openit/services/websites/com.openit.patchworks/shared/assets/patches'
  # config.patch_bundles_dir = '/openit/services/websites/com.openit.patchworks/shared/assets/patch_bundles'

  # The production environment is meant for finished, "live" apps.
  # Code is not reloaded between requests
  config.cache_classes = true

  # Show full error reports and enable caching
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true

  # Specifies the header that your server uses for sending files
  config.action_dispatch.x_sendfile_header = "X-Sendfile"

  # For nginx:
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'

  # If you have no front-end server that supports something like X-Sendfile,
  # just comment this out and Rails will serve the files

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Use a different logger for distributed setups
  # config.logger = SyslogLogger.new

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Disable Rails's static asset server
  # In production, Apache or nginx will already do this
  config.serve_static_assets = false

  # Enable serving of images, stylesheets, and javascripts from an asset server
  # config.action_controller.asset_host = "http://assets.example.com"

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
end

#TODO ActiveSupport::XmlMini.backend = 'LibXML'