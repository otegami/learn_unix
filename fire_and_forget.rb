# message = 'Good Morning'
# recipient = 'tree@mybackyard.com'

# fork do
#   # StatsCollector.record message, recipient
# end

# fork do
#   5.times do
#     sleep 1
#     puts 'I am an orphan!'
#   end
# end

# Process.wait
# abort 'Parent process died...'

# 3.times do
#   fork do
#     sleep rand(5)
#   end
# end

# 3.times do
#   puts Process.wait
# end

# 5.times do
#   fork  do
#     if rand(5).even?
#       exit 111
#     else
#       exit 112
#     end
#   end
# end

# 5.times do
#   pid, status = Process.wait2

#   if status.exitstatus == 111
#     puts "#{pid} encountered an even number!"
#   else
#     puts "#{pid} encountered an odd number!"
#   end
# end

# favorite = fork do
#   exit 77
# end

# middle_child = fork do
#   abort "I want to be waited on!"
# end

# pid, status = Process.waitpid2 favorite
# puts status.exitstatus

2.times do
  fork do
    abort "Finished!"
  end
end

puts Process.wait
sleep 5

puts Process.wait
