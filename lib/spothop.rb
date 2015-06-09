require 'aws-sdk'

class SpotHop
  def self.GetPricing(instancetype, region)
    ec2 = Aws::EC2::Client.new(region: region)

    response = ec2.describe_spot_price_history({instance_types: [instancetype], product_descriptions: ['Linux/UNIX'], start_time: (Time.now - 1).iso8601(3), end_time: Time.now.iso8601(3)})

    sorted = response["spot_price_history"].sort_by {|az| az.spot_price}
    return {:availability_zone => sorted.first["availability_zone"], :spot_price => sorted.first["spot_price"]}
  end
end
