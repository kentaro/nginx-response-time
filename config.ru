class ResponseTime
  def call(env)
    sleep 3
    [200, {'content-type' =>  'text/plain'}, ['hello, world']]
  end
end

use Rack::Head
use Rack::Runtime
run ResponseTime.new
