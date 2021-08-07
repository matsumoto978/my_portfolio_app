require "csv"

class ImportCsv
  def self.import(path)
    list = []
    CSV.foreach(path, headers: true) do |row|
      data = row.to_h.transform_values do |val|
        /\A\d+\z/ =~ val ? val.to_i : val
      end
      list << data
    end
    list
  end

  def self.gym_data(path)
    list = import(path)
    puts "gymsテーブルのデータを削除"
    Gym.destroy_all
    puts "インポート処理を開始"
    Gym.create!(list)
    puts "インポート完了!!"
  end
end