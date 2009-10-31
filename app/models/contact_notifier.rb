class ContactNotifier < ActionMailer::Base

   validates_presence_of :email
   validates_presence_of :nometo


  def contact_notification(nome,email,telefone,msg)
    @recipients = "Eduardo Zaghi <eduzera@gmail.com>"
    #@from = "Eduardo Zaghi <eduzera@gmail.com>"
    @from = "#{nome} <#{email}>"
    @subject = "[Ricar Web Site] - Contato do Usuario"
    @body = {:msg => msg,:nome => nome, :email => email, :telefone => telefone}
  end


end

