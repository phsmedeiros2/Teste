
 login = Login.new
 
E("acesse o menu {String}") do |menu| 
  login.menuPesquisar.click if menu.upcase == "PESQUISA - QA"
end


Quando("eu preencher todos os campos obrigatórios") do 
    login.nome.send_keys "Paulo"
    login.sobrenome.send_keys "Medeiros"
    login.email.send_keys "phs.medeiros@hotmail.com"
    login.confirEmail.send_keys "phs.medeiros@hotmail.com"
    $browser.li(text: "31-49").click
    login.selectAreaQA[2].click
    login.atracao[0].click
    $browser.li(text: "Todas as anteriores").click
    login.linguagens.send_keys "Ruby, Java, Visual Basic"
    login.btnEnviar.click
end

Então("deve ser direcionado para uma página de sucesso") do


  if $browser.div(text: "Your form has been successfully submitted.").exist?
    puts "Pagina carregada com Sucesso!"
  else
    puts "Pagina não carregada com Sucesso!"
  end 
  

end