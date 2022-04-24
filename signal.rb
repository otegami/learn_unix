# child_processes = 3
# dead_processes = 0

# child_processes.times do
#   fork do
#     sleep 3
#   end
# end

# $stdout.sync = true

# trap(:CHLD) do
#   begin
#     while pid = Process.wait(-1, Process::WNOHANG)
#       puts pid
#       dead_processes += 1
#     end
#   rescue Errno::ECHILD
#   end
# end

# loop do
#   exit if dead_processes == child_processes
#   sleep 1
# end

# loop do
#   puts (Math.sqrt(rand(44)) ** 8).floor
#   sleep 1
# end

puts pid = Process.pid
trap(:INT) { print "Na na na, you can't get me." }
sleep

Process.kill(:INT, pid)
Process.kill(:KILL, pid)

trap(:INT) { puts 'This is the first signal handler' }

old_handler = trap(:INT) {
  old_handler.call
  puts 'This is the second handler'
  exit
}

sleep
