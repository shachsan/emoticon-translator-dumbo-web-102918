# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)

  emo = YAML.load_file(file_path)
  translate_emoticons ={"get_emoticon" => {}, "get_meaning" => {}}
  emo.each do |eng_name, emoticons|
    eng_emot, jap_emot = emoticons
    translate_emoticons["get_meaning"][jap_emot]=eng_name
    translate_emoticons["get_emoticon"][eng_emot]=jap_emot
  end
  translate_emoticons

end

def get_japanese_emoticon(file_path, eng_emoticon)
  japanese_emot = load_library(file_path)["get_emoticon"][eng_emoticon]
  if japanese_emot
    return japanese_emot
  else
    return "Sorry, that emoticon was not found"
  end
end 

def get_english_meaning
  # code goes here
end
