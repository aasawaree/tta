class ComparativeAnalysisController < ApplicationController
  # To change this template use File | Settings | File Templates.
  def new
  end

  def create
  end

  def show

  end

  def index

  end

  def date_filter
    @start_date= params[:comparative_analysis][:start_date]
    @end_date= params[:comparative_analysis][:end_date]
    if(params[:project][:id]=="")
      flash[:no_id_error] = "No project Selected"
      render 'comparative_analysis/create'
    else
      @result_set = ComparativeAnalysis.get_result_set(params[:project][:id],@start_date,@end_date)
      flash[:no_id_error]=""
      render :create
    end
  end

end