# require modules here
require "yaml"

def load_library

gov = YAML.load_file('emoticons.yml')

final_results = gov.each_with_object({}) do |(key, value), final_array|
final_array[key.to_s] = {:english => value[0], :japanese => value[1]}
end
return final_results
end




def get_japanese_emoticon(emoticons_file, emotixon)
for key, value in emoticons_file
    if value[:english] == emotixon
        return value[:japanese]
    elsif value[:japanese] == emotixon
        return value[:english]
    end
    end
end





def get_english_meaning(emotixon_file, emotixon)
  
for key, value in emotixon_file
    if value[:english] == emotixon
        return key
    elsif value[:japanese] == emotixon
        return key
    end
    end
end