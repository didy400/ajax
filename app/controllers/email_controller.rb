class EmailController < ApplicationController
  def index
    @emails = Email.all
  end

  def create
    @emails = Email.create!(objet: Faker::Book.title, body: Faker::DoctorWho.quote)
=begin  respond_to do |format|
      format.html { redirect_to root_path }
=end
  end

  def show
    @email = Email.find(params[:id])

    # Mark an email as read
    @email.update!(read: true)

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
end
