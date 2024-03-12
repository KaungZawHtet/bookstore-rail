class CustomersController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @customer = @book.customers.create(customer_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book = Book.find(params[:book_id])
    @customer = @book.customers.find(params[:id])
    @customer.destroy
    redirect_to book_path(@book), status: :see_other
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :age, :wish)
    end
end
