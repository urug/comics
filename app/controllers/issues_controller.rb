class IssuesController < ApplicationController
  before_action :set_book
  before_action :set_issue, only: [:show, :edit, :update, :destroy]

  # GET /books/123/issues
  # GET /books/123/issues.json
  def index
    @issues = @book.issues
  end

  # GET /books/123/issues/1
  # GET /books/123/issues/1.json
  def show
  end

  # GET /books/123/issues/new
  def new
    @issue = @book.issues.new
  end

  # GET /books/123/issues/1/edit
  def edit
  end

  # POST /books/123/issues
  # POST /books/123/issues.json
  def create
    @issue = @book.issues.new(issue_params)

    respond_to do |format|
      if @issue.save
        format.html { redirect_to [@book, @issue], notice: 'Issue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @issue }
      else
        format.html { render action: 'new' }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/123/issues/1
  # PATCH/PUT /books/123/issues/1.json
  def update
    respond_to do |format|
      if @issue.update(issue_params)
        format.html { redirect_to [@book, @issue], notice: 'Issue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/123/issues/1
  # DELETE /books/123/issues/1.json
  def destroy
    @issue.destroy
    respond_to do |format|
      format.html { redirect_to book_issues_url(@book) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:book_id])
    end

    def set_issue
      @issue = @book.issues.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def issue_params
      params.require(:issue).permit(:book_id, :number, :title, :cover_image_url, :price)
    end
end
