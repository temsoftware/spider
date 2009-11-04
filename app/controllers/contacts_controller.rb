class ContactsController < ApplicationController

  skip_before_filter :authenticate

  layout "ricar"

  def index

    @stores = Store.all

  end

  def send_email
    @nome     = params[:nome_txt]
    @email    = params[:email_txt]
    @telefone = params[:telefone_txt]
    @msg      = params[:msg_tx]
    @news     = params[:news] || 0


    @costumer = Costumer.find_by_email(@email)

    if @costumer == nil
      @costumer = Costumer.new
    end

    @costumer.name  = @nome
    @costumer.email = @email
    @costumer.tel   = @telefone
    @costumer.news  = @news

    @costumer.save

    ContactNotifier.deliver_contact_notification(@nome,@email,@telefone,@msg)

    redirect_to :controller => "home", :action => "index"

  end

end

