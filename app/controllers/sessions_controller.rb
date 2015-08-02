class SessionsController < ApplicationController
  def create
    @meetup_id = (request.env["omniauth.auth"]).info.id
    puts @meetup_id
    @meetup_name = (request.env["omniauth.auth"]).info.name
    puts @meetup_name
    @meetup_photo_url = (request.env["omniauth.auth"]).info.photo_url
    puts @meetup_photo_url
    @meetup_public_profile = (request.env["omniauth.auth"]).info.urls.public_profile
    puts @meetup_public_profile
    @meetup_token = (request.env["omniauth.auth"]).credentials.token
    puts @meetup_token
    @meetup_refresh_token = (request.env["omniauth.auth"]).credentials.refresh_token
    puts @meetup_refresh_token
    @meetup_expires_at = (request.env["omniauth.auth"]).credentials.expires_at
    puts @meetup_expires_at
    puts (request.env["omniauth.auth"]).to_yaml
  end
end
