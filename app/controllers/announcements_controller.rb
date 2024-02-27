class AnnouncementsController < ApplicationController
  before_action :require_admin, except: [:announcement_data]
  def new
    @announcement = Announcement.new
  end
  def create
    @announcement = Announcement.new(announcement_params)
    if @announcement.save
      flash[:notice] = 'Announcement was successfully created.'
      redirect_to url_for(controller: '/my', action: :page)
    else
      render :new
    end
  end
  def edit
    @announcement = Announcement.find(params[:id])
  end

  def update
    @announcement = Announcement.find(params[:id])
    if @announcement.update(announcement_params)
      flash[:notice] = 'Announcement was successfully updated.'
      redirect_to url_for(controller: '/my', action: :page)
    else
      render :edit
    end
  end

  def destroy
    @announcement = Announcement.find(params[:id])
    @announcement.destroy
    flash[:notice] = 'Announcement was successfully updated.'
    redirect_to url_for(controller: '/my', action: :page)
  end
  def announcement_data
    puts 'raj'
    announcements=Announcement.where(announcement_date: Date.today)
    render json: announcements
  end
  private
  def announcement_params
    params.require(:announcement).permit(:title, :description, :announcement_date)
  end
end
