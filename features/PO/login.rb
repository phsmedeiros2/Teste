class Login

   def menuPesquisarQA
     $browser.li(id: "menu-item-226")
   end

   def nome
    $browser.input(id: "nf-field-5")
   end

   def sobrenome
    $browser.input(id: "nf-field-6")
   end

   def email
    $browser.input(id: "nf-field-7")
   end

   def confirEmail
    $browser.input(id: "nf-field-8")
   end
  
   def selectAreaQA
    $browser.select(id: "nf-field-11").options
   end

   def atracao
    $browser.select(id: "nf-field-12").options
   end

   def linguagens
    $browser.input(id: "nf-field-14")
   end

   def btnEnviar
    $browser.input(id: "nf-field-16")
   end
end