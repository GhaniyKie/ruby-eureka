# frozen_string_literal: true

require 'eureka/railtie' if defined? Rails
require 'eureka/execute'
require 'eureka/health'

module Eureka
  class << self
    attr_accessor :side_app_name, :eureka_url, :jar, :app_port, :sidecar_port, :instance_id

    def reset
      @instance_id = nil
      @side_app_name = nil
      @eureka_url = nil
      # @jar = 'bin/sidecar-1.0.jar'
      @jar = 'bin/sidecar-service-v2.1.jar'
      @app_port = 3000
      @sidecar_port = 9090
    end

    # Default way to set up Euraka
    def setup
      yield self
    end
  end

  reset
end
