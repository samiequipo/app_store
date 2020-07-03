CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:                         'Google',
    google_storage_access_key_id:     'GOOGID6AWY5TXS5KJJT7FO2T',
    google_storage_secret_access_key: 'Pn80KnsiwjF5UOFqqYV6+dAsHnBKUSA/Pwu9r7pO'
  }
  config.fog_directory = 'almacen_rails'
end