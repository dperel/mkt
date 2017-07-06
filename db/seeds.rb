require 'csv'

# Seed Services
CSV.foreach(Rails.root.join('db', 'service.csv'), headers: true) { |row| Service.create(group: row[0],restrictions: row[1], name: row[2], procedure_code: row[3], effective_date: row[4]) }
