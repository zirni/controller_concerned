require File.expand_path("../controller_concerned/base", __FILE__)

ActionController::Base.send(:include, ControllerConcerned::Base)