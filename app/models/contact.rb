class Contact < MailForm::Base
  attribute :name, presence: true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, presence: true
  attribute :nickname, :captcha => true

  def headers
      {
        :subject => "Hello!",
        :to => "dayna.c.lowe@gmail.com",
        :from => %("#{name}" <#{email}>)
    }
  end


end