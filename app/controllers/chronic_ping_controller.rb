class ChronicPingController < ApplicationController
  def parse
    unless params[:q].blank?
      begin
        response = Chronic.parse(params[:q]).strftime(ChronicPing.config.datetime_format)
        render :json => { status: :success, response: response }
      rescue
        render :json => { status: :error, response: "" }
      end
    else
      render :json => { status: :incomplete_query, response: "" }
    end
  end
end
