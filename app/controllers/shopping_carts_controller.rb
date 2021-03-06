class ShoppingCartsController < ApplicationController
  # GET /shopping_carts
  # GET /shopping_carts.xml
  def index
    @shopping_carts = ShoppingCart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @shopping_carts }
    end
  end

  # GET /shopping_carts/1
  # GET /shopping_carts/1.xml
  def show
    @shopping_cart = ShoppingCart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @shopping_cart }
    end
  end

  # GET /shopping_carts/new
  # GET /shopping_carts/new.xml
  def new
    @shopping_cart = ShoppingCart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @shopping_cart }
    end
  end

  # GET /shopping_carts/1/edit
  def edit
    @shopping_cart = ShoppingCart.find(params[:id])
  end

  # POST /shopping_carts
  # POST /shopping_carts.xml
  def create
    @shopping_cart = ShoppingCart.new(params[:shopping_cart])

    respond_to do |format|
      if @shopping_cart.save
        format.html { redirect_to(@shopping_cart, :notice => 'ShoppingCart was successfully created.') }
        format.xml  { render :xml => @shopping_cart, :status => :created, :location => @shopping_cart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @shopping_cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /shopping_carts/1
  # PUT /shopping_carts/1.xml
  def update
    @shopping_cart = ShoppingCart.find(params[:id])

    respond_to do |format|
      if @shopping_cart.update_attributes(params[:shopping_cart])
        format.html { redirect_to(@shopping_cart, :notice => 'ShoppingCart was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @shopping_cart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /shopping_carts/1
  # DELETE /shopping_carts/1.xml
  def destroy
    @shopping_cart = ShoppingCart.find(params[:id])
    @shopping_cart.destroy

    respond_to do |format|
      format.html { redirect_to(shopping_carts_url) }
      format.xml  { head :ok }
    end
  end
end
