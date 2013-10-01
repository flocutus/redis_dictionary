# encoding: utf-8
require_dependency "redis_dictionary/application_controller"

module RedisDictionary
  class TranslationsController < RedisDictionary::ApplicationController
    respond_to :json, :html, :js    

    redis_dictionary_authenticate

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
          @digest = RedisDictionary::Translation.digest_key(params[:key])
        }
        format.html{
          redirect_to redis_dictionary_root_path, :notice => "Added translations"
        }
      end

    end

    def destroy
      Translation.destroy(params[:id])
      respond_to do |format|
        format.js
        format.html{
          redirect_to redis_dictionary_root_path, :notice => "Key deleted"
        }
      end

    end

    def get
      locale ||= params[:lang]
      respond_with t params[:key], locale: locale
    end

  end
end
