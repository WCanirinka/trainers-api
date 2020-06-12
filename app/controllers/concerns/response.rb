# **
# frozen_string_literal: true

# Module
# *

module Response # :nodoc:
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end
