class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]



# GET /items
def  index
 @items = Item.all
 #render text: @items.map{ |i |  "#{i.id} #{i.name} : #{i.price}"}.join("<br/>")
  end


#/items/1  GET
def show
   #unless @item = Item.where( id: params[:id] ).first #.each {|i|}
   #render  "item/show"
  #render text: "Page not found"# status: 404
#end
end

# /items POST
def create
 #@item = Item.create(name: params[:name], description: params[:description], price: params[:price], real: params[:real] , weight: params[:weight])
 #  @item =Item.create(params[item:])

  @item = Item.new(item_params)

    respond_to do |f|
      if @item.save
        f.html { redirect_to @item, notice: 'Item was successfully created.' }
      else
        f.html { render :new }
      end
    end


    #@item = Item.create ( params [:item])
    #  if @item.errors.empty?
    #        render  "show"
    #     else
    #        render "new"
    #end

     # redirect_to item_path(@item) #render text:  params.inspect  #{}"item creat  #{@item.id} : #{@item.name}  (#{!@item.new_record?}) "  /items/:id
end

# /items/new  GET
def new
   @item = Item.new
end

# /items/1  GET
def edit
end
# /items/1 PUT --> POST
def update
end

#/items/1 DELETE --> POST
def destroy
    @item.destroy
    respond_to do |k|
      k.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      k.json { head :no_content }
    end
end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :price, :weight, :real, :description)
    end
end
