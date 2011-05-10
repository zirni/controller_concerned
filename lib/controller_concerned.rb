module ControllerConcerned
  def self.included(base)
    base.class_eval do
      extend ClassMethods
    end
  end
  
  module ClassMethods
    def controller_concerned
      module_name = self.name.underscore.gsub(/_controller$/, "") << "_concerns"
      concerned_path  = Rails.root.join("app", "controllers", module_name)
      
      Dir.glob("#{concerned_path}/*.rb").each do |file|
        file = Pathname.new(file).basename.to_s
        camelized = "#{module_name}/#{file.gsub(".rb", "")}".camelize
        self.send :include, camelized.constantize
      end
    end
  end
end
