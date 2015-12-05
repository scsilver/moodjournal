require 'json'
require 'pusher-client'

key = "60dbe63931b29368c58c"
secret = "6f0fac727cfb5a675818"
socket = PusherClient::Socket.new(key, { :encrypted => true, :secret => secret })
socket.connect(true) # Connect asynchronously
socket.subscribe('private-command')
#Pusher['private-command'].authenticate(params[:socket_id => socket.id])


socket['private-command'].bind('client-command-event') do |data|
  document_string = data
  command_string = "python twitter_city_text_processing.py #{document_string.to_json}"
  to_python = exec command_string
  puts result
  puts command
  sp.flush

  sp.puts(command)
  puts "humid command sent: "
  sp.flush
end

while true do

end
