module EventsHelper

	def format_date(event)
		event.date_and_time.strftime('%d-%m-%Y')
	end
	
	def format_time(event)
		event.date_and_time.strftime('%H:%M')
	end
end
