# require modules here
require "yaml"

def load_library

gov = YAML.load_file('emoticons.yml')

final_results = gov.each_with_object({}) do |(key, value), final_array|
final_array[key.to_s] = {:english => value[0], :japanese => value[1]}
end
final_results
end




def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end