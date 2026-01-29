class StaticPagesController < ApplicationController
  def index
    pix_api = Pexels.new
    @photos = pix_api.request_collection(id_params)["media"].map { |photo| photo["src"]["original"] } if params[:id].presence
  end

  private

  def id_params
    params.expect(:id)
  end
end
