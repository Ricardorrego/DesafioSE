class Contas < SitePrism::Page

  element :botao_logar_elem, 'button[type="submit"]'
  element :nome_elem,        'input[id="nome"]'
  element :last_nome_elem,   'input[name="lname"]'
  element :email_elem,       'input[id="email"]'
  element :confirma_email,       'input[name="confirmaEmail"]'
  element :senha_elem,       'input[id="password"]'
  element :senha_conf,       'input[id="password-confirm"]'
  element :btn_enviar_elem, 'button[class="btn btn-primary"]'
  element :btn_aceito, 'button[class="btn modal-action modal-close"]'
  element :botao_prosseguir, 'input[class=btn][type=submit]'

   def initialize
    @primeiro_nome = Faker::Name.first_name
    @segundo_nome = Faker::Name.last_name
    @email = Faker::Internet.email
    @senha = Faker::Internet.password
    @mobile = Faker::PhoneNumber.phone_number
    @endereco_primeiro = Faker::Address.full_address
    @endereco_segundo = Faker::Address.full_address

  end

  def preencher_dados
    nome_elem.set @primeiro_nome
    email_elem.set @email
    confirma_email.set @email
    check('term', allow_label_click: true)
    senha_elem.set @senha
    senha_conf.set @senha
    botao_prosseguir.click
  end

  def validar_array
    [@primeiro_nome, @segundo_nome, @email]
  end

  def table_values
    table.map(&:text)
  end

end