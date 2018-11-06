class HomePage < SitePrism::Page
    
    set_url '/embarque'
    element :campo_voucher, 'input[id="voucher"]'
    element :campo_senha, 'input[name="password"]'
    element :botao_logar, 'input[class=btn][type=submit]'
    element :botao_confirmar, 'button[class=btn]'
        
    def logar_customer(codigo)
        campo_voucher.set codigo
        botao_logar.click
        botao_confirmar.click
    end
    
end