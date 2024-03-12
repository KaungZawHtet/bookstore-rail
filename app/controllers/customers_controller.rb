class CustomersController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @comment = @book.customers.create(customer_params)
    redirect_to book_path(@book)
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :age)
    end
end
