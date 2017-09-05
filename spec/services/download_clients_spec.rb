require "rails_helper"

RSpec.describe DownloadClients do
  describe ".run" do
    it "creates a client record for each row in the spreadsheet" do
      service = MockService.new
      authorizor = MockCredentials.new

      allow(Google::Apis::SheetsV4::SheetsService).to receive(:new).and_return(service)
      allow(Google::Auth::ServiceAccountCredentials).to receive(:make_creds).and_return(authorizor)

      response = DownloadClients.run

      expect(response).to match_array(["response1", "response2"])
    end
  end
end

class MockService
  attr_accessor :client_options, :authorization

  def initialize
    @client_options = MockClientOptions.new
    @authorization = nil
  end

  def get_spreadsheet_values(_spreadsheet_id, _range)
    ["response1", "response2"]
  end

  class MockClientOptions
    attr_writer :application_name
  end
end

class MockCredentials
  def self.make_creds(scope:)
  end

  def fetch_access_token!
  end
end
