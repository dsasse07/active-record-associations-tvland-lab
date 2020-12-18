class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
    
    def full_name
        [self.first_name, self.last_name].join(" ")
    end

    def list_roles
        # i=0
        # my_roles = []
        # my_shows = self.shows.map(&:name)
        # my_characters = self.characters.map(&:name)
        # while i < my_shows.length do 
        #     my_roles << "#{my_characters[i]} - #{my_shows[i]}"
        #     i += 1
        # end
        # my_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end
end