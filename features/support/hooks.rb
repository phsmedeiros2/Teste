
Before do
    $browser = Watir::Browser.new
    $browser.window.maximize
    $step_counter = 1
    $take_screenshot = Proc.new { embed $browser.screenshot.base64, 'image/png' }
    #$screenshot = Watir::Screenshot.new $browser
end

AfterStep do
    #name = "C:\\screenshot#{$step_counter}.png"
    #$browser.screenshot.save name
    #$take_screenshot.call()
    $step_counter += 1
    #puts $screenshot.base64
end

After do
    #$browser.cookies.clear rescue warn 'Sem sessão para limpar'
    $browser.close
    puts "O cenário terminou em: #{DateTime.now}"
end