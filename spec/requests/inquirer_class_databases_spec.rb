require 'rails_helper'

RSpec.describe "InquirerClassDatabases", type: :request do
  describe "GET /inquirer_class_databases" do
    it "works! (now write some real specs)" do
      get inquirer_class_databases_path
      expect(response).to have_http_status(200)
    end
  end
end
