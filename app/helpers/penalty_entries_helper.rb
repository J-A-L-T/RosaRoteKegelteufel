module PenaltyEntriesHelper

	def date2ymd(date)   # Deutsch -> International, Rückgabe als Date
  return Date.strptime(date, "%d.%m.%Y")
end

def date2dmy(d)      # International -> Deutsch, Rückgabe als String
  return d.to_s.sub(/(\w+)-(\w+)-(\w+)/, '\\3.\\2.\\1')
end

end
