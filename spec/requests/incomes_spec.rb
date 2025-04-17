RSpec.describe "Incomes" do
  describe "GET /index" do
    pending "returns http success" do
      get "/incomes/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    pending "returns http success" do
      get "/incomes/edit"
      expect(response).to have_http_status(:success)
    end
  end
end
