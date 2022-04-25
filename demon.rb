# def daemonize_app
#   if RUBY_VERSION < "1.9"
#     exit if fork
#     Process.setsid
#     exit if fork
#     Dir.chdir "/"
#     STDIN.reopen "/dev/null"
#     STDOUT.reopen "/dev/null", "a"
#     STDERR.reopen "/dev/null", "a"
#   else
#     Process.daemon
#   end
# end

puts Process.getpgrp
puts Process.pid

fork {
  puts Process.pid
  puts Process.getpgrp
}

# プロセスをデーモン化したいと思ったら、基本的なことを自問してみよう。「このプロ
# セスは永遠に応答し続ける必要があるだろうか？」
# もし答えがノーなら、必要なのは cron ジョブなどのバックグラウンドジョブの仕組
# みだろう。答えがイエスなら、デーモンプロセスにすることを検討してもいいかもしれ
# ない。
