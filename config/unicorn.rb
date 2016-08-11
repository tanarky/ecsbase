# -*- coding: utf-8 -*-

@dir='.'
working_directory @dir
worker_processes 2

timeout 90
listen '0.0.0.0:3000'

pid "#{@dir}/tmp/unicorn.pid"

#stderr_path "#{@dir}/log/unicorn.stderr.log"
#stdout_path "#{@dir}/log/unicorn.stdout.log"

#preload_app true
#
#GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly = true
#
#before_fork do |server, worker|
#  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
#  old_pid = "#{server.config[:pid]}.oldbin"
#  if old_pid != server.pid
#    begin
#      sig = (worker.nr + 1) >= server.worker_processes ? :QUIT : :TTOU
#      Process.kill(sig, File.read(old_pid).to_i)
#    rescue Errno::ENOENT, Errno::ESRCH
#    end
#  end
#end
#
#after_fork do |server, worker|
#  defined?(ActiveRecord::Base) and
#    ActiveRecord::Base.establish_connection
#end
#
#before_exec do |server|
#  ENV['BUNDLE_GEMFILE'] = "#{@dir}/Gemfile"
#end
