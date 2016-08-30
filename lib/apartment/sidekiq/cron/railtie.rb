module Apartment::Sidekiq::Cron
  class Railtie < Rails::Railtie
    initializer "apartment.sidekiq.cron" do
      Sidekiq::Cron::Job.prepend(Apartment::Sidekiq::Cron)

      schedule_file = Rails.root.join("config/sidekiq_cron.yml")

      if File.exists?(schedule_file) && Sidekiq.server?
            Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
      end
    end
  end
end
