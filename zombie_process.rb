# message = 'Good morning'
# recipient = 'tree@mybackyard.com'

# pid = fork do
#   StatsCollector.record message, recipient
# end

# Process.detach(pid)

pid = fork { sleep 1 }
puts pid

sleep 20
