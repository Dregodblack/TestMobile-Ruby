require 'rake'

desc 'Run Android Tests'
task :run_android, [:tag] do |_task, args|
  run_android(args[:tag])
end

def run_android(tag)
  puts '========================== START =========================='
  system "cucumber -t #{tag}"
  puts '=========================== END ==========================='
end
