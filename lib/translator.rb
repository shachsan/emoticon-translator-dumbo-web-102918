# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)

  emo = YAML.load_file(file_path)
  # binding.pry
  translate_emoticons ={"get_emoticon" => {}, "get_meaning" => {}}
  # new_hash={}
  emo.each do |eng, emoticons|
    translate_emoticons["get_meaning"][emoticons[1]]=eng
    translate_emoticons["get_emoticon"][emoticons[0]]=emoticons[1]

      # binding.pry
  end
  translate_emoticons

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
