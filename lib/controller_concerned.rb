require File.expand_path("../controller_concerned/base", __FILE__)

ApplicationController.send(:include, ControllerConcerned::Base)