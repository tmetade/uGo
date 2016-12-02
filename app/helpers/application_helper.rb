module ApplicationHelper
	def header(text)
  		content_for(:header) { text.to_s }
	end


	def resource_name
    	:user
  	end

	  def resource
	    @resource ||= User.new
	  end

	  def devise_mapping
	    @devise_mapping ||= Devise.mappings[:user]
	  end
end
