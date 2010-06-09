def create
  @thing = Thing.new(params[:thing])
  if @thing.save
    track_pageview("/thing/create")

    flash[:notice] = "Thanks for saving that thing."
    redirect_to thing_path(@thing)
  else
    render :action => :new
  end
end