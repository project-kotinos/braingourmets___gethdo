# Enable i18n warnings to avoid the deprecation warning.
I18n.enforce_available_locales = true

# Load locale files recursively.
I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]

# Set the default locale.
I18n.default_locale = :en

# the available front-end localizations
LANGUAGES = [
    %w(English, en),
    %w(Deutsch, de)
]
