config = {
  title: "Rock the Vote - Contesting Platform"
  app_id: "103175153154421" # Facebook App ID
  api: {}
}

production = true
config.api.root = if not production then 'http://localhost:8000' else 'http://rtv-contest.herokuapp.com'
config.api.versionRoot = config.api.root + '/api/v1'

module.exports = config