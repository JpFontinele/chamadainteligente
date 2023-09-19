class ApplicationController < ActionController::API
  def version
    render json: {"api_name": "Chamada Inteligente", "version": "#{VERSAO}"}
  end
end
