class Noun < ActiveRecord::Base
	after_save :load_into_soulmate
	before_destroy :remove_from_soulmate

	validates_uniqueness_of :name


	private 

	def load_into_soulmate
		loader = Soulmate::Loader.new("nouns")
		loader.add("term" => name, "id" => self.id, "data" => {
			"link" => Rails.application.routes.url_helpers.noun_path(self)
	   	})
	end

	def remove_from_soulmate
		loader = Soulmate::Loader.new("nouns")
	    loader.remove("id" => self.id)
	end
end
