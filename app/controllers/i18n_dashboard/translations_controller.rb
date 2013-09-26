# encoding: utf-8
require_dependency "i18n_dashboard/application_controller"

module I18nDashboard
  class TranslationsController < I18nDashboard::ApplicationController

    i18n_dashboard_authenticate

    def index
      unless params[:query].blank?
       @translations = (params[:query] == '*') ? 
                        Translation.all.select{|j| j =~ /^#{params[:query]}$/}.paginate(:page => params[:page], :per_page => 15) :  
                        Translation.all.select{|j| j =~ /#{params[:query]}/}.paginate(:page => params[:page], :per_page => 15)
      else
        @translations = Translation.all.paginate(:page => params[:page], :per_page => 15)
      end
    end

    def create

      Translation.create(params[:key], params[:value], params[:locale])
      respond_to do |format|
        format.js{
          @digest = I18nDashboard::Translation.digest_key(params[:key])
        }
        format.html{
          redirect_to i18n_dashboard_root_path, :notice => "Added translations"
        }
      end

    end

    def destroy
      Translation.destroy(params[:id])
      respond_to do |format|
        format.js
        format.html{
          redirect_to i18n_dashboard_root_path, :notice => "Key deleted"
        }
      end

    end

  end
end
