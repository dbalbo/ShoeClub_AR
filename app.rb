require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }



get('/') do
	@stores = Store.all
	@brands = Brand.all
	erb(:index)
end


post('/') do
	name = params.fetch('name')
	@stores = Store.create({:name => name, :id => nil})
	if @stores.save
		redirect('/')
	else
		erb(:errors)
	end
end


get('/store/:id') do
	@store = Store.find(params.fetch('id').to_i)
	@brands = Brand.all
	@stores = Store.all
	erb(:store_info)
end


post('/brandadd/') do
	description = params.fetch('description')
	new_brand = Brand.create({:description => description})
	store_id = params.fetch('store_id')
	store = Store.find(store_id)
	store.brands.push(new_brand)
	@store = store
	@brand = Brand.all
	redirect back
end

patch('/stores/:id') do
	name = params.fetch('name')
	@store = Store.find(params.fetch('id'))
	@store.update({:name => name})
	erb(:store_info)
end

delete('/') do
	@store = Store.find(params.fetch('id').to_i)
	@store.delete
	@stores = Store.all
	erb(:index)
end

