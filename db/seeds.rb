# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# CSV FOR IMPORT FAITHFUL
# require 'csv'

# CSV.foreach('public/ecc.csv', headers: true) do |row|
#   name_parts = row['nome'].split(' ')
#   first_name = name_parts.shift
#   last_name = name_parts.join(' ')
  
#   faithful = Faithful.create!(
#     first_name: first_name,
#     last_name: last_name,
#     function: row['função'],
#     community_id: row['comunidade'],
#     phone_number: row['telefone'],
#     date_of_birth: row['data_de_nascimento'],
#     sexual_orientation: SexualOrientation.find_by(id: row['orientação_sexual'].to_i),
#     relationship_id: row['relacionamento'],
#     wedding_date: row['data_de_casamento'],
#     children: row['filhos'],
#     state_id: row['estado'],
#     city_id: row['cidade'],
#     neighborhood_id: row['bairro'],
#     street_id: row['rua'],
#     house_number: row['numero_da_casa'],
#     complement: row['complemento']
#   )
# end