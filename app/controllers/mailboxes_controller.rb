class MailboxesController < ApplicationController
  def new
    @user_mailbox_form = UserMailboxForm.new
  end

  def create
    @user_mailbox_form = UserMailboxForm.new(user_mailbox_form_params)
    if @user_mailbox_form.save
      redirect_to users_url
    else
      render :new
    end
  end

  private

  def user_mailbox_form_params
    params.require(:user_mailbox_form).permit(:login, :password, :uid)
  end
end
