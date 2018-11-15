class ImportCsv < ApplicationRecord

  def self.import
    path = Fire.join Rails.root, "db/csv_data/csv_data.csv"

    list = []
    CSV.foreach(path, headers: true) do |row|
      list << {
        name: row["name"],
        age: row["age"],
        address: row["address"]
      }
    end

    puts "インポート処理開始"

    begin
      User.create!(list)
      puts "インポート完了"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポート失敗 :UnknownAttrbuteError"
    end
  end
end
