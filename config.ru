require './config/environment'
require_relative 'app/controllers/killers_controller'
require_relative 'app/controllers/survivors_controller'
require_relative 'app/controllers/perks_controller'
require_relative 'app/controllers/users_controller'

use Rack::MethodOverride

use CurrenciesController
use KillersController
use SurvivorsController
use PerksController
use UsersController
run ApplicationController
