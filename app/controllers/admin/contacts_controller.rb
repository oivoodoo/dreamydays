class Admin::ContactsController < AdminController
  def index
    @contacts = Contact.paginate(:page => params[:page])
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(admin_contacts_url) }
      format.xml  { head :ok }
    end
  end

end
