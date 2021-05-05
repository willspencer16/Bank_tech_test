# frozen_string_literal: true

def table_header
  'date || credit || debit || balance'
end

def date
  date = Time.new
  date.strftime('%d/%m/%Y')
end
