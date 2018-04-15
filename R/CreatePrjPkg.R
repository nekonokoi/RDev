#'@title  create new prj
#'@description create new prj
#'@details dev pkg and analysis env

#'create prj dir
#'
#' @importFrom devtools setup
#' @export
create_pj <- function(dir_name){
  current_dir<-getwd()
  dir.create(dir_name)
  setwd(dir_name)
  devtools::setup()

  # create data
  dir.create('./data')
  # create inst
  dir.create('./inst')
  # create extdata
  dir.create('./inst/extdata')
  dir.create('./inst/extdata/raw')
  dir.create('./inst/extdata/interim')
  dir.create('./inst/extdata/proccessed')
  dir.create('./inst/extdata/created')
  # create others
  dir.create('./inst/notebooks')
  dir.create('./inst/reports')
  dir.create('./inst/models')
  dir.create('./inst/refs')
  dir.create('./inst/sql')
  dir.create('./inst/config')
  dir.create('./inst/test')

  # create src
  file.create('./R/run.R')
  file.create('./R/etl.R')
  file.create('./R/wrangle.R')
  file.create('./R/model.R')
  file.create('./R/vizualize.R')

  dir.create('./R/shiny')
  file.create('./R/shiny/app.R')

  # create readme.md
  file.create('./readme.md')

  setwd(current_dir)
}
