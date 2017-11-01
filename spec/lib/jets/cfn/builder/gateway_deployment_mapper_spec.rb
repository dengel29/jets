require "spec_helper"

describe Jets::Cfn::Builder::ApiGatewayDeploymentMapper do
  let(:map) do
    Jets::Cfn::Builder::ApiGatewayDeploymentMapper.new("path", "s3-bucket")
  end

  describe "ApiGatewayDeploymentMapper" do
    it "contains info for CloudFormation API Gateway Resources" do
      expect(map.gateway_deployment_logical_id).to include("ApiGatewayDeployment")
    end
  end
end
