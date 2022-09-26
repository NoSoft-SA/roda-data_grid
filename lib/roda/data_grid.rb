# frozen_string_literal: true

require 'json'

require 'roda/data_grid/version'
# require 'roda/data_grid/dataminer_control'
require 'roda/data_grid/client_rule_check'
require 'roda/data_grid/base_grid_config'
require 'roda/data_grid/column_definer'
require 'roda/data_grid/list_grid_config'
require 'roda/data_grid/list_grid_data'
require 'roda/data_grid/list_grid_definition'
require 'roda/data_grid/lookup_grid_config'
require 'roda/data_grid/lookup_grid_data'
require 'roda/data_grid/lookup_grid_definition'
require 'roda/data_grid/search_grid_config'
require 'roda/data_grid/search_grid_data'
require 'roda/data_grid/search_grid_definition'

require 'crossbeams/dataminer'
require 'crossbeams/layout'

module Crossbeams
  module DataGrid
    class Error < StandardError; end

    # Default column widths for different data types
    COLWIDTH_DATETIME = 140
    COLWIDTH_BOOLEAN = 100
    COLWIDTH_NUMBER = 120
    COLWIDTH_INTEGER = 100
  end
end

class Roda
  module DataGrid
    # Your code goes here...
  end
end
