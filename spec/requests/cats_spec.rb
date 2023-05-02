require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
    it "gets a list of cats" do
      Cat.create(
        name: "Brad Angelo Pit",
        age: 12,
        gender: "Male",
        enjoys: "Long naps by the window and the occational belly rub",
        image: "https://c1.wallpaperflare.com/preview/288/436/865/cat-cats-pet-licking.jpg"
      )
      get "/cats"
      cats = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cats.length).to eq 1
    end
  end

  describe "POST /create" do
    it "creates a cat" do
      cat_params = {
        cat: {
        name: "Brangelo Pit",
        age: 12,
        gender: "Male",
        enjoys: "Long naps by the window and the occational belly rub",
        image: "https://c1.wallpaperflare.com/preview/288/436/865/cat-cats-pet-licking.jpg"
        }
      }
      post "/cats", params: cat_params
      expect(response).to have_http_status(200)
      cat = Cat.first
      expect(cat.name).to eq "Brangelo Pit"
      expect(cat.age).to eq 12
      expect(cat.gender).to eq "Male"
      expect(cat.enjoys).to eq "Long naps by the window and the occational belly rub"
      expect(cat.image).to eq "https://c1.wallpaperflare.com/preview/288/436/865/cat-cats-pet-licking.jpg"
    end
  end

  describe "PATCH /update" do
    it "updates a cat" do
      cat = Cat.create(
        name: "Brad Angelo Pit",
        age: 12,
        gender: "Male",
        enjoys: "Long naps by the window and the occational belly rub",
        image: "https://c1.wallpaperflare.com/preview/288/436/865/cat-cats-pet-licking.jpg"
      )
      update_params = {
        cat: {
        name: "Brangelo Pit",
        age: 14,
        gender: "Male",
        enjoys: "Long naps by the window and the occational belly rub",
        image: "https://c1.wallpaperflare.com/preview/288/436/865/cat-cats-pet-licking.jpg"
        }
      }
      patch "/cats/#{cat.id}", params: update_params
      expect(response).to have_http_status(200)
      cat = Cat.first
      expect(cat.name).to eq "Brangelo Pit"
      expect(cat.age).to eq 14
    end
  end

  describe "DELETE /destroy" do
    it "will delete a cat" do
      cat = Cat.create(
        name: "Brad Angelo Pit",
        age: 12,
        gender: "Male",
        enjoys: "Long naps by the window and the occational belly rub",
        image: "https://c1.wallpaperflare.com/preview/288/436/865/cat-cats-pet-licking.jpg"
      )
      delete "/cats/#{cat.id}"
      expect(response).to have_http_status(200)
    end
  end

  describe "cannot create a cat without valid attributes" do
    it "cannot create a cat without a name" do
      cat_params = {
        cat: {
          age: 9,
          gender: 'Male',
          enjoys: 'doing everything',
          image: 'doeveryting.jpg'
        }
      }
      post '/cats', params: cat_params
      cat = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(cat['name']).to include "can't be blank"
    end
    it 'cannot create a cat without an age' do
      cat_params = {
        cat:{
          name: 'Kevin',
          gender:'Male',
          enjoys:'loving all of his 9 lives',
          image:'livingitup.com'
        }
      }
    post '/cats', params: cat_params
    cat = JSON.parse(response.body)
    expect(response).to have_http_status(422)
    expect(cat['age']).to include "can't be blank"
    end  
  end  

  describe "cannot update a cat without valid attributes" do
    it 'cannot update a cat without a name' do
      cat_params = {
        cat: {
          name: 'Mr. Whiskers',
          age: 3,
          gender: 'Male',
          enjoys:'salivating all over his parents cheecks',
          image:'updatednewwebsite.com'
        }
      }
      post  '/cats', params: cat_params
      cat = Cat.first

      update_params = {
        cat: {
          name: '',
          age: 3, 
          gender: 'Male',
          enjoys: "doing nothing all day long",
          image: 'somethingsomethingdarkside.com'
        }
      }
      patch "/cats/#{cat.id}", params: update_params
      update_cat = JSON.parse(response.body)
      expect(response).to have_http_status(422)
      expect(update_cat['name']).to include "can't be blank"

    end
  end
end

