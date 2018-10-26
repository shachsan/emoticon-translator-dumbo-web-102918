# require modules here
require 'yaml'
require 'pry'

def load_library(file_path)

  emo = YAML.load_file(file_path)
  # binding.pry
  translate_emoticons ={"get_emoticon" => {}, "get_meaning" => {}}
  new_hash={}
  emo.each do |eng, jap|
      new_hash[jap[1]]=eng
      binding.pry
    end
  end

end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end
