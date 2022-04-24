reader, writer = IO.pipe

fork do
  reader.close

  10.times do
    writer.puts 'Another one bites the dust'
  end
end

writer.close
while message = reader.gets
  $stdout.puts message
end

# writer.write("Into the pipe I go ...")
# writer.close

# puts reader.read

# 一方通行だよ！
# reader.write("Trying to get the reader to write something")
