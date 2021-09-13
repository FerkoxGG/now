class MessagesController < ApplicationController
  #before_action
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save 
      redirect_to '/thanks'
    else
      render :new
    end
  end

  private
  def message_params
    params.require(:message).permit(:user, :name,  :email, :phone, :message)
  end

end


# TODO: # Validacion de los campos del formulario
