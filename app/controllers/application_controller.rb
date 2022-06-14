class ApplicationController < ActionController::Base

  before_action :print_message

  private
  def print_message
    puts "Hello I am Print Message Conteoller callback"
  end
end
