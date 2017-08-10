class LandmarksController < ApplicationController

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :"/landmarks/index"
  end

  get "/landmarks/new" do
    @landmarks = Landmark.all
    erb :"landmarks/new"
  end

  post "/landmarks" do
    @landmarks = Landmark.all
    @land = Landmark.new(params[:landmark])
    @land.save
    erb :"landmarks/index"
  end

  get "/landmarks/:id/edit" do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/edit"
  end

  get "/landmarks/:id" do
    @landmark = Landmark.find(params[:id])
    erb :"landmarks/show"
  end

  patch '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    @landmark.update(params[:landmark])
    # binding.pry
    redirect "/landmarks/#{@landmark.id}"
  end


end
