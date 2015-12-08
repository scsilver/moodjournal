require "rails_helper"

RSpec.describe InquirerClassDatabasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/inquirer_class_databases").to route_to("inquirer_class_databases#index")
    end

    it "routes to #new" do
      expect(:get => "/inquirer_class_databases/new").to route_to("inquirer_class_databases#new")
    end

    it "routes to #show" do
      expect(:get => "/inquirer_class_databases/1").to route_to("inquirer_class_databases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/inquirer_class_databases/1/edit").to route_to("inquirer_class_databases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/inquirer_class_databases").to route_to("inquirer_class_databases#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/inquirer_class_databases/1").to route_to("inquirer_class_databases#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/inquirer_class_databases/1").to route_to("inquirer_class_databases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/inquirer_class_databases/1").to route_to("inquirer_class_databases#destroy", :id => "1")
    end

  end
end
