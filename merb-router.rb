Merb::Router.prepare do
  # resource'y
  resources :articles do
    resources :comments
  end

  # mapowanie domeny
  match(:domain => "somecooldomain.com").to(:controller => "main").name(:main)

  # mapowanie subdomen do kont uzytkownikow
  match('/', :subdomains => /(.+)/).to(:controller => 'accounts', :action =>'dashboard')

  # opcjonalne elementy
  match("/articles/(/:year(/:month(/:day)))/:title").to(:controller => "articles", 
							:action => "show").name(:article)
end

url(:main)
resources(:articles)
resource(@article)
resource(@article, :comments)
resource(@article, @comment)
