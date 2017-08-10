class FiguresController < ApplicationController

  get "/figures/new" do
    erb :"/figures/new"
  end

  post "/figures" do
    #code
    @fig = Figure.new(params[:figure])

    if params[:title] != ""
      t = Title.new(params[:title])
      @fig.titles << t
    end

    if params[:landmark] != ""
      @l = Landmark.new(params[:landmark])
      @l.figure = @fig
      @l.save
    end

    @fig.save

    @figures = Figure.all
    erb :"/figures/index"
  end

  get "/figures" do
    @figures = Figure.all
    erb :"/figures/index"
  end

  get "/figures/:id/edit" do
    @figure = Figure.all.find do |f|
      f.id == params[:id].to_i
    end
    erb :"figures/edit"
  end

  patch "/figures/:id" do
    @figure = Figure.find(params[:id])

    if params[:title] != ""
       t = Title.new(params[:title])
       @figure.titles << t
     end

    if params[:landmark] != ""
       @l = Landmark.new(params[:landmark])
       @l.figure = @figure
       @l.save
     end
    @figure.update(params[:figure])
    redirect "/figures/#{@figure.id}"
  end

  get "/figures/:id" do
    @figure = Figure.all.find do |f|
      f.id == params[:id].to_i
    end
    erb :"figures/show"
  end


end
