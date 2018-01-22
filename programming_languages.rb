def reformat_languages(languages)

  new_hash = {}
  style_arr = []
  languages.each{|style, hash|
    hash.each {|lang, data|
      data[:style] = [style]
      if lang == :javascript
        data[:style] = [:oo, :functional]
      end
      new_hash[lang] = data
    }
  }
new_hash
end