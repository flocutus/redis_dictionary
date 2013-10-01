Rails.application.routes.draw do

  mount RedisDictionary::Engine => "/"
end
