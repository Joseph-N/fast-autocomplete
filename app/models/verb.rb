class Verb < ActiveRecord::Base
	after_save :load_into_soulmate
	before_destroy :remove_from_soulmate

    validates_uniqueness_of :name

	private 

	def load_into_soulmate
		loader = Soulmate::Loader.new("verbs")
		loader.add("term" => name, "id" => self.id, "data" => {
			"link" => Rails.application.routes.url_helpers.verb_path(self)
	   	})
	end

	def remove_from_soulmate
		loader = Soulmate::Loader.new("verbs")
	    loader.remove("id" => self.id)
	end
end
