module Apartment::Sidekiq::Cron
  class Railtie < Rails::Railtie
    initializer "apartment.sidekiq.cron" do
      Sidekiq::Cron::Job.prepend(Apartment::Sidekiq::Cron)
    end
  end
end
