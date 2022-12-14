Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # 주소로 처음 들어가면 HomeController에서 index액션에 연결해주세요
  root "home#index" # get "/" => "home#index" 와 동일
  get "/hi" => "home#hi"

  get "/calc" => "calc#index"
  get "/calc/result" => "calc#result"

  get "/calc/plus/:num1/:num2" => "calc#plus"

  get "/crud" => "crud#index"
  get "/crud/write" => "crud#write"
  post "/create" => "crud#create"
  
  get "/crud/modify/:post_id" => "crud#modify"
  post "/update/:post_id" => "crud#update"
  get "/delete/:post_id" => "crud#delete"
end
