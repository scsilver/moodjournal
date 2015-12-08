json.array!(@inquirer_class_databases) do |inquirer_class_database|
  json.extract! inquirer_class_database, :id, :positive, :negative, :support, :hostile, :strong, :power, :weak, :submit, :active, :passive, :pleasure, :pain, :feel, :arousal, :emote, :virtue, :vice, :ovrst, :undrst, :academ, :doctrin, :econ, :exch, :expressive, :legal, :milit, :politic, :religion
  json.url inquirer_class_database_url(inquirer_class_database, format: :json)
end
