module EventsHelper

	def format_date(event)
		event.date_and_time.strftime('%d-%m-%Y')
	end
	
	def format_time(event)
		event.date_and_time.strftime('%H:%M %p')
	end

	def discounted_rate(event)
		event.ticket_fee - (event.ticket_fee * 5/100)
	end

  def calculate_fee(event,user)
  	unless user.nil?
  		user.gender == "Female" ? discounted_rate(event) : event.ticket_fee
  	else
  		event.ticket_fee
  	end
  end
end