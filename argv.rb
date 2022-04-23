# ruby argv.rb foo bar -va
p ARGV

ARGV.include?('--help')
ARGV.include?('-c') && ARGV[ARGV.index('-c') + 1]
