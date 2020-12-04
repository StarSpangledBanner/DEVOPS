Dado('que para entrar no Aluno Online') do
    visit 'http://online.iesb.br/aonline/logon.asp'
  end
  
  Quando('o aluno informa a matricula {string} e a senha {string}') do |string, string2|
    fill_in 'txtnumero_matricula', with: string
    fill_in 'txtsenha_tac', with: string2
    click_button 'Entrar'    
  end
  
  Então('deve ser redirecionado para o Aluno Online') do
    visit 'http://online.iesb.br/aonline/main.asp'
  end 