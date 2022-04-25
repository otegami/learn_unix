# system 'sleep 5'
Process.spawn 'sleep 5'

pid  = Process.spawn 'sleep 5'
puts Process.waitpid(pid)
