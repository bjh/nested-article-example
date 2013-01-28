require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PurchaseOrdersController do

  # This should return the minimal set of attributes required to create a valid
  # PurchaseOrder. As you add validations to PurchaseOrder, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PurchaseOrdersController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all purchase_orders as @purchase_orders" do
      purchase_order = PurchaseOrder.create! valid_attributes
      get :index, {}, valid_session
      assigns(:purchase_orders).should eq([purchase_order])
    end
  end

  describe "GET show" do
    it "assigns the requested purchase_order as @purchase_order" do
      purchase_order = PurchaseOrder.create! valid_attributes
      get :show, {:id => purchase_order.to_param}, valid_session
      assigns(:purchase_order).should eq(purchase_order)
    end
  end

  describe "GET new" do
    it "assigns a new purchase_order as @purchase_order" do
      get :new, {}, valid_session
      assigns(:purchase_order).should be_a_new(PurchaseOrder)
    end
  end

  describe "GET edit" do
    it "assigns the requested purchase_order as @purchase_order" do
      purchase_order = PurchaseOrder.create! valid_attributes
      get :edit, {:id => purchase_order.to_param}, valid_session
      assigns(:purchase_order).should eq(purchase_order)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PurchaseOrder" do
        expect {
          post :create, {:purchase_order => valid_attributes}, valid_session
        }.to change(PurchaseOrder, :count).by(1)
      end

      it "assigns a newly created purchase_order as @purchase_order" do
        post :create, {:purchase_order => valid_attributes}, valid_session
        assigns(:purchase_order).should be_a(PurchaseOrder)
        assigns(:purchase_order).should be_persisted
      end

      it "redirects to the created purchase_order" do
        post :create, {:purchase_order => valid_attributes}, valid_session
        response.should redirect_to(PurchaseOrder.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved purchase_order as @purchase_order" do
        # Trigger the behavior that occurs when invalid params are submitted
        PurchaseOrder.any_instance.stub(:save).and_return(false)
        post :create, {:purchase_order => {  }}, valid_session
        assigns(:purchase_order).should be_a_new(PurchaseOrder)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PurchaseOrder.any_instance.stub(:save).and_return(false)
        post :create, {:purchase_order => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested purchase_order" do
        purchase_order = PurchaseOrder.create! valid_attributes
        # Assuming there are no other purchase_orders in the database, this
        # specifies that the PurchaseOrder created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PurchaseOrder.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => purchase_order.to_param, :purchase_order => { "these" => "params" }}, valid_session
      end

      it "assigns the requested purchase_order as @purchase_order" do
        purchase_order = PurchaseOrder.create! valid_attributes
        put :update, {:id => purchase_order.to_param, :purchase_order => valid_attributes}, valid_session
        assigns(:purchase_order).should eq(purchase_order)
      end

      it "redirects to the purchase_order" do
        purchase_order = PurchaseOrder.create! valid_attributes
        put :update, {:id => purchase_order.to_param, :purchase_order => valid_attributes}, valid_session
        response.should redirect_to(purchase_order)
      end
    end

    describe "with invalid params" do
      it "assigns the purchase_order as @purchase_order" do
        purchase_order = PurchaseOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PurchaseOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => purchase_order.to_param, :purchase_order => {  }}, valid_session
        assigns(:purchase_order).should eq(purchase_order)
      end

      it "re-renders the 'edit' template" do
        purchase_order = PurchaseOrder.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PurchaseOrder.any_instance.stub(:save).and_return(false)
        put :update, {:id => purchase_order.to_param, :purchase_order => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested purchase_order" do
      purchase_order = PurchaseOrder.create! valid_attributes
      expect {
        delete :destroy, {:id => purchase_order.to_param}, valid_session
      }.to change(PurchaseOrder, :count).by(-1)
    end

    it "redirects to the purchase_orders list" do
      purchase_order = PurchaseOrder.create! valid_attributes
      delete :destroy, {:id => purchase_order.to_param}, valid_session
      response.should redirect_to(purchase_orders_url)
    end
  end

end
