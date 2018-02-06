require 'serverspec'

# Required by serverspec
set :backend, :exec

# chkconfig is not on PATH by default. so set it
ENV["PATH"] = ENV["PATH"] + ":/sbin" unless ENV["PATH"].include?("/sbin")
RSpec.configure do |c|
  if ENV['ASK_SUDO_PASSWORD']
    require 'highline/import'
    c.sudo_password = ask("Enter sudo password: ") { |q| q.echo = false }
  else
    c.sudo_password = ENV['SUDO_PASSWORD']
  end
end