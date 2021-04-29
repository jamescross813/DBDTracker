require './config/environment'
require_relative 'app/controllers/killers_controller'
require_relative 'app/controllers/survivors_controller'
require_relative 'app/controllers/currencies_controller'
require_relative 'app/controllers/users_controller'

use Rack::MethodOverride

use KillersController
use SurvivorsController
use CurrenciesController
use UsersController
run ApplicationController
