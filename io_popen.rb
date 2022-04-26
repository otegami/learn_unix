# IO.popen('ls')
# IO.popen('less', 'w') do |stream|
#   stream.puts "some\ndata"
# end

require 'open3'

Open3.popen3('grep', 'data') do |stdin, stdout, stderr|
  stdin.puts "some\ddata"
  stdin.close
  puts stdout.read
end

Open3.popen3('ls', '-uhh', err: :out) do |stdin, stdout, stderr|
  puts stdout.read
end
