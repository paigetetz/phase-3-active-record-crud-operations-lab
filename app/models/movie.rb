class Movie < ActiveRecord::Base

#Create Method
def self.create_with_title (title)
    Movie.create(title: title)
end
#Read Methods
def Movie.first_movie
    Movie.first
end

def self.last_movie
    Movie.last
end

def self.all_movies
    Movie.all
end
def self.movie_count
    Movie.count
end

def self.find_movie_with_id (id)
    Movie.find(id)
end
def self.find_movie_with_attributes (attribute)
    Movie.find_by(attribute)
end

def self.find_movies_after_2002
    Movie.where('release_date > 2002')
end

#Update Methods
def update_with_attributes (attributes)
    self.update(attributes)
end
def self.update_all_titles (title)
    Movie.update(title: title)
end
#Delete Methods
def self.delete_by_id (id) 
    #using helper method
    movie = self.find_movie_with_id (id)
    #easier to type
    # movie = Movie.find(id)
    movie.destroy
end
def self.delete_all_movies
    Movie.destroy_all
end

#end class
end