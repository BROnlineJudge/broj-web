class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :edit, :update, :destroy]

  # GET /submissions
  # GET /submissions.json
  def index
    if user_signed_in?
      @submissions = Submission.all.select{|s| s.user_id == current_user.id}
    else
      redirect_to new_user_session_url, notice: 'Login required.'
    end
  end

  # GET /submissions/new
  def new
    @submission = Submission.new
  end

  # POST /submissions
  # POST /submissions.json
  def create
    params = submission_params
    params["user_id"] = current_user.id
    @submission = Submission.new(params)
    system "./submit.sh;"
    respond_to do |format|
      if @submission.save
        format.html { redirect_to submissions_url, notice: 'Submission was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submissions/1
  # PATCH/PUT /submissions/1.json
  def update
    respond_to do |format|
      if @submission.update(submission_params)
        format.html { redirect_to submissions_url, notice: 'Submission was successfully updated.' }
      else
        format.html { render :edit }
        format.json { render json: @submission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submissions/1
  # DELETE /submissions/1.json
  def destroy
    @submission.destroy
    respond_to do |format|
      format.html { redirect_to submissions_url, notice: 'Submission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:verdict, :language, :execution_time, 
                                         :code, :problem_id, :user_id)
    end
end
