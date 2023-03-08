class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # create an owner account
  post "/owners" do
    Owner.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      location: params[:location],
      avatar: params[:avatar],
      email: params[:email],
      phone_number: params[:phone_number],      
      password: params[:password],
    ).to_json
    
  end
  # create an rider account
  post "/riders" do
    Rider.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      location: params[:location],
      avatar: params[:avatar],
      email: params[:email],
      phone_number: params[:phone_number],
      id_number: params[:id_number],
      license_number: params[:license_number],
      spouse_contact: params[:spouse_contact],      
      password: params[:password],
    ).to_json
    
  end
  # private method
  def login_error
    @message = {error: "Invalid username or password"}
    return @message.to_json
  end

  # login user using an email and a password
  post '/login' do
    password = params[:password]
    logging_user = Owner.find_by(email: params[:email]) || Rider.find_by(email: params[:email])
    if (logging_user)
      if (logging_user.password == password)
        return logging_user.to_json
      else
        login_error
      end      
    else
      login_error    
    end
  end

  # create an bike 
  post "/bikes" do
    Bike.create(
      model: params[:model],
      reg_number: params[:reg_number],
      cc: params[:cc],
      price: params[:price],
      booked: params[:booked],
      owner_id: params[:owner_id]
    ).to_json
    
  end
  # get all bikers on platfrom
  get "/riders" do
    riders = Rider.all
    riders.to_json
  end
  # see all my bikes as an owner
  get "/bikes/:owner_id" do    
    myBikes = Bike.where(owner_id: params[:owner_id])
    myBikes.to_json
  end
  # TODO: show my paid for bikes
  get "/bikes/:owner_id/payments" do
    mybikes = Bike.where(owner_id: params[:owner_id])
    mybikes.to_json
    # totalAmount = mybikes.price.to_i
  end
  # see all bikes on platform
  get "/bikes" do
    Bike.all.to_json    
  end
  # see all my hired bikes
  get "/bikies/:rider_id" do
    myBikes = Bike.where(rider_id: params[:rider_id])
    myBikes.to_json
  end
  # hire bike 
  patch '/bikes/:id' do
    bike = Bike.find(params[:id])
    bike.update(
      booked: params[:booked],
      rider_id: params[:rider_id]
    )
    bike.to_json
  end

  # delete a rider acc
  delete "/riders/:id" do
    rider = Rider.find(params[:id])
    rider.destroy.to_json
  end

  # delete an owner acc
  delete "/owners/:id" do
    ownerToDelete = Owner.find(params[:id])
    ownerToDelete.destroy.to_json    
  end
end
