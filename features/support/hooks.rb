# frozen_string_literal: true

Before do
  Capybara.reset_session!
end

Before do
  visit '/'
end

Before do |_scenario|
  window = Capybara.current_session.current_window
  window.resize_to(1366, 768)

  @page2 = PageObject.new

  @page1 = lambda do |klass|
    klass.new
  end
end

After do |scenario|
  Dir.mkdir('reports') unless Dir.exist?('reports')

  sufix = ('error' if scenario.failed?) || 'sucess'
  name = scenario.name.tr(' ', '_').downcase

  page.save_screenshot("reports/#{sufix}-#{name}.png")
  embed("reports/#{sufix}-#{name}.png", 'image/png', 'SCREENSHOT')
end
