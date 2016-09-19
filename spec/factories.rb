FactoryGirl.define do
  factory(:user) do
    email('lauren@email.com')
    password('kitties123')
  end

  factory(:place) do
    name('Planet Granite')
    street_address('1405 NW 14th Ave')
    city('Portland')
    state('OR')
  end
end
