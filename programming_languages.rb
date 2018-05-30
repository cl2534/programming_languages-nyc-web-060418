 def reformat_languages(languages)

new_hash = {}

languages.each do |symbol, language|
    language.each do |language, types|
      types.each do |type, value|
        if new_hash[language].nil?
          new_hash[language]={}
        
        elsif new_hash[language][:style].nil?
          new_hash[language][:style] = []
        
        new_hash[language][:style] << symbol
        
        elsif new_hash[language][type].nil?
          new_hash[language][type] = value
        end
      end
    end
  end
  new_hash
end