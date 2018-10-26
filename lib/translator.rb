# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)

  emo = YAML.load_file(file_path)
  translate_emoticons ={"get_emoticon" => {}, "get_meaning" => {}}
  emo.each do |eng_name, emoticons|
    eng_emot, jap_emot = emoticons
    translate_emoticons["get_meaning"][emoticons[jap_emot]]=eng_name
    translate_emoticons["get_emoticon"][emoticons[eng_emot]]=emoticons[jap_emot]
  end
  translate_emoticons

end

def get_japanese_emoticon(file_path, eng_emoticon)
  # load_library(file_path)["get_emoticon"][eng_emoticon]

end

def get_english_meaning
  # code goes here
end
