# frozen_string_literal: true

Before do
  Capybara.reset_session!

  visit '/'

  window = Capybara.current_session.current_window
  window.resize_to(1366, 768)

  @page1 = lambda do |klass|
    klass.new
  end

  @page2 = PageObject.new
end

After do |scenario|
  Dir.mkdir('reports') unless Dir.exist?('reports')

  sufix = ('error' if scenario.failed?) || 'sucess'
  name = scenario.name.tr(' ', '_').downcase

  page.save_screenshot("reports/#{sufix}-#{name}.png")
  embed("reports/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT')
end

at_exit do
end
