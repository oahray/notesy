require "rails_helper"

RSpec.describe "Notes API", type: :request do
  let!(:notes) { create_list(:note, 10) }
  let(:note_id) { notes.first.id }

  describe "GET /notes" do
    before { get "/notes" }

    it "returns notes" do
      expect(json).not_to be nil
      expect(json.size).to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /notes/:id" do
    before { get "/notes/#{note_id}" }

    context "when the record does not exist" do
      let(:note_id) { 100 }

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        expect(response.body).to match(/Couldn't find Note/)
      end
    end

    context "when the record exists" do
      it "returns the note" do
        expect(json).not_to be_empty
        expect(json["id"]).to eq(note_id)
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "POST /notes" do
    let(:valid_attributes) { { title: "Hello geeky world!", body: "This is totally my first attempt!" } }

    context "when the request is valid" do
      before { post "/notes", params: valid_attributes }

      it "creates a note" do
        expect(json["title"]).to eq(valid_attributes[:title])
        expect(json["body"]).to eq(valid_attributes[:body])
      end

      it "returns status code 201" do
        expect(response).to have_http_status(201)
      end
    end

    context "when the request is invalid" do
      before { post "/notes", params: { title: "Foobar" } }

      it "returns status code 422" do
        expect(response).to have_http_status(422)
      end

      it "returns a validation failure message" do
        expect(response.body)
          .to match(/Validation failed: Body can't be blank/)
      end
    end
  end

  describe "PUT /notes/:id" do
    let(:valid_attributes) { { title: "Shopping today" } }

    context "when the record exists" do
      before { put "/notes/#{note_id}", params: valid_attributes }

      it "updates the record" do
        expect(json["title"]).to eq(valid_attributes[:title])
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end
  end

  describe "DELETE /notes/:id" do
    before { delete "/notes/#{note_id}" }

    it "returns status code 204" do
      expect(response).to have_http_status(204)
    end
  end
end
