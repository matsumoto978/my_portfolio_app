ADMIN_EMAIL = 'admin@example.com'
EMAIL = 'test@example.com'
PASSWORD = 'password'

User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end 

AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin_user|
  admin_user.password = PASSWORD
  puts '管理者ユーザーの初期データインポートに成功しました。'
end

gym_path = "db/csv_data/gym_data.csv"
ImportCsv.gym_data(gym_path)