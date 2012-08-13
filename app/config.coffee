config = {
  title: "Rock the Vote - Contesting Platform"
  api: {}
}

production = true
config.api.root = if not production then 'http://localhost:8000' else 'http://celcp.herokuapp.com'
config.api.versionRoot = config.api.root + '/api/v1'

module.exports = config