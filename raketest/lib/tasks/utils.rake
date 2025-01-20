namespace :utils do
  desc "Popular a tabela users com a quantidade informada"
  task setup_user: :environment do
    if Rails.env.development?
      if (ARGV.size == 2) && (ENV['QTD'] != "")        
        ENV['QTD'].to_i.times do |i|
          user_name = Faker::Name.name
          user_email = Faker::Internet.email
          user = "#{user_name} - #{user_email}"
          puts "Cadastrando o #{user}"
          User.create(name: user_name, email: user_email)
        end
      else
        puts "Você precisa informar a quantidade de usuários desejada"
        puts "EX: rake utils:setup_user QTD=10"
      end
    else
      puts "Você não está em modo de desenvolvimento"
    end
  end
end
