def app_secrets(key)
  Rails.env.production? ? YAML::load(Rails::Secrets.read)[Rails.env][key] : YAML::load(File.read('config/secrets.yml'))[Rails.env][key]
end