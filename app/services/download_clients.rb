require "google/apis/sheets_v4"
require "googleauth"

class DownloadClients
  APPLICATION_NAME = "Grasp"
  SCOPE = Google::Apis::SheetsV4::AUTH_SPREADSHEETS_READONLY

  class << self
    def run
      new.run
    end
  end

  def authorize
    authorizer = Google::Auth::ServiceAccountCredentials.make_creds(scope: SCOPE)
    authorizer.fetch_access_token!
    authorizer
  end

  def run
    service = Google::Apis::SheetsV4::SheetsService.new
    service.client_options.application_name = APPLICATION_NAME
    service.authorization = authorize

    spreadsheet_id = "1LmItwD9FsVG9D_1ZVUNQgAxYM4KxZYLfv_D918Xe5m8"
    range = "Form Responses 1!A2:F"
    response = service.get_spreadsheet_values(spreadsheet_id, range)
    
    response
    
    # response.values.each do |row|
    #   puts "#{row[1]}, #{row[3]}, #{row[4]}, #{row[5]}"
    # end
  end
end
