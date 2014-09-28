class EntriesController < ApplicationController

respond_to :js, :html

 def index
    @entry = Entry.new
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.save
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.update_attributes(entry_params)
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
  end

  private
   # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:name, :address, :phone, :email)
    end
end
