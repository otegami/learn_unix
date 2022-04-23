passwd = File.open('/etc/passwd')
puts passwd.fileno

hosts = File.open('/etc/hosts')
puts hosts.fileno

passwd.close

# closed stream (IOError)
# puts passwd.fileno

puts STDIN.fileno
puts STDOUT.fileno
puts STDERR.fileno

p Process.getrlimit(:NOFILE)

Process.setrlimit(:NOFILE, 4096)
p Process.getrlimit(:NOFILE)

# Process.setrlimit(:NOFILE, 3)

# null = File.open('/dev/null')
# puts null.fileno

puts "NPROC: #{Process.getrlimit(:NPROC)}"
puts "FSIZE: #{Process.getrlimit(:FSIZE)}"
puts "STACK: #{Process.getrlimit(:STACK)}"
