class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_filer :authenticate_user!
end

# class AuthenticationController < ApplicationController
#   # Turn off user authentication for all actions in this controller
#   # skip_before_filer :authenticate_user!
#
#   def login
#     '...'
#   end
#
#   def register
#     '...'
#   end
# end
