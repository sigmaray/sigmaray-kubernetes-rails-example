class ApplicationController < ActionController::Base
  def index
    render inline: '<pre>' + request.headers.env.reject { |key| key.to_s.include?('.') }.to_yaml + '</pre>'
  end
end
