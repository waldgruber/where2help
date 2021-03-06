class NgoMailer < ApplicationMailer
  default from: 'no-reply@where2help.at'

  def admin_confirmed(ngo)
    @ngo = ngo
    I18n.with_locale(@ngo.locale) do
      mail.to(@ngo.email)
    end
  end
end
