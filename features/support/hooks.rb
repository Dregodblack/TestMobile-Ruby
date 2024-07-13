Before do
  start_driver
  manage.timeouts.implicit_wait = 30
end

# Before do |scenario|
#   scenario_name = scenario.name
#   time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
#   puts "Cenário: #{scenario_name} iniciado em: #{time_stamp}"
# end

# Before('@smoke') do
#   time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
#   puts "Iniciando próximo teste de regressão no momento: #{time_stamp}"
# end

# AfterStep do
#   time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
#   file_name = "#{time_stamp[11..].gsub('.','')}_evidence"
#   screenshot "features/reports/screenshots/#{file_name}.png"
#   attach("features/reports/screenshots/#{file_name}.png", 'image/png')
#   puts "STEP FINALIZADO EM: #{time_stamp}"
# end

After do |scenario|
  if scenario.failed?
     screenshot 'features/reports/screenshots/image.png'
     attach('features/reports/screenshots/image.png', 'image/png')
  end
end

# After('@smoke') do
#   time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
#   puts "Fim do cenário de teste regressivo no momento: #{time_stamp}"
# end

After do
  driver_quit
end

at_exit do
  ReportBuilder.configure do |config|
    config.report_types = %i[json html]
    config.input_path = "features/reports"
    config.report_path = "features/reports/evidence"
    config.report_title = "REPORT AUTOMATION"
    config.additional_info = { Platform: SISTEMA.upcase}
    config.color = 'blue'
  end
  ReportBuilder.build_report
end