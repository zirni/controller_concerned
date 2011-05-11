class << ActionController::Base
  def concerned_with(*concerns)
    concerns.each do |concern|
      require_dependency "#{name.underscore.gsub("_controller", "")}/#{concern}"
    end
  end
end