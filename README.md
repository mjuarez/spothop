# spothop

Gem to grab lowest priced instance type in a region.

## Requirements

Properly setup AWS [Shared Credentials](http://blogs.aws.amazon.com/security/post/Tx3D6U6WSFGOK2H/A-New-and-Standardized-Way-to-Manage-Credentials-in-the-AWS-SDKs)

## Installation

Install the gem like so:

  gem install spothop

## Usage

```
require 'spothop'
SpotHop.GetPricing("m3.medium","us-east-1")
=> {:availability_zone=>"us-east-1d", :spot_price=>"0.010000"}
```

#### Use within Kitchen EC2!

```
---
<%= require 'spothop' %>
driver_config:
  region: <%= ENV['AWS_REGION'] || 'us-east-1' %>
  price: <%= require 'spothop'; SpotHop.GetPricing(ENV['EC2_INSTANCE_TYPE'],ENV['AWS_REGION'])[:spot_price] %>
  availability_zone: <%= require 'spothop'; SpotHop.GetPricing(ENV['EC2_INSTANCE_TYPE'],ENV['AWS_REGION'])[:availability_zone] %>
```

## Author

* [Mike Juarez](https://github.com/mjuarez)
