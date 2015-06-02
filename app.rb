require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/task')

get('/') do
  @tasks = Task.all()
  erb(:index)
end

post('/tasks') do
  new_description = params.fetch('new_description')
  task = Task.new(new_description)
  task.save()
  erb(:saved)
end
