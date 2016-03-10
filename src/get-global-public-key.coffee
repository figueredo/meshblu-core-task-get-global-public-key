class GetGlobalPublicKey
  constructor: ({@publicKey}) ->

  do: (job, callback) =>
    return callback null, @noContent() unless @publicKey?
    return callback null, @globalPublicKey()

  globalPublicKey: =>
    return {
      metadata:
        code: 200
      data:
        publicKey: @publicKey
    }

  noContent: =>
    return {
      metadata:
        code: 204
    }

module.exports = GetGlobalPublicKey
