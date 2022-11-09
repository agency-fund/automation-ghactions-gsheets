library('data.table')
library('googlesheets4')
library('yaml')

set.seed(1728)

paramsDir = 'params'
params = read_yaml(file.path(paramsDir, 'params.yaml'))

########################################

if (Sys.getenv('GOOGLE_TOKEN') == '') {
  gs4_auth()
} else {
  gs4_auth(path = Sys.getenv('GOOGLE_TOKEN'))}
