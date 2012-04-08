class OrderMailer < ActionMailer::Base
  def order_notification(order)
    @@smtp_settings = {
      :enable_starttls_auto => true,
      :address              => "smtp.gmail.com",
      :port                 => "587",
      :domain               => "",
      :authentication       => :plain,
      :user_name            => "korsak@dreamydays.ru",
      :password             => "dreamydays"
    }

		recipients "peskova@dreamydays.ru"
		from "dreamydays.contacts@gmail.com"
		subject "Получены новые данные на странице контакты"
		content_type "text/html"
		sent_on Time.now
		body :order => order
  end
end

