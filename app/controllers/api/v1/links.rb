module API
  module V1
    class Links < Grape::API
      include API::V1::Defaults

      resource :links do
        desc "Return all pinboard links"
        get "", root: :links do
          Link.all
        end

        desc "Return a link"
        params do
          requires :id, type: String, desc: "ID of the link"
        end
        get ":id", root: "link" do
          Link.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end
