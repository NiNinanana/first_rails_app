Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # 주소로 처음 들어가면 HomeController에서 index액션에 연결해주세요
  root "home#index" # get "/" => "home#index" 와 동일
  
  get "/hi" => "home#hi"
end
