GetGlobalPublicKey = require '../'

describe 'GetGlobalPublicKey', ->
  describe 'when instantiated with a public key', ->
    beforeEach ->
      @sut = new GetGlobalPublicKey publicKey: 'oh, hi mom!'

    describe 'when called', ->
      beforeEach (done) ->
        @sut.do {}, (error, @response) => done error

      it 'should get have the status code of 200', ->
        expect(@response.metadata.code).to.equal 200

      it 'should return the publicKey', ->
        expect(@response.data).to.deep.equal publicKey: 'oh, hi mom!'

  describe 'when instantiated without a public key', ->
    beforeEach ->
      @sut = new GetGlobalPublicKey publicKey: undefined

    describe 'when called', ->
      beforeEach (done) ->
        @sut.do {}, (error, @response) => done error

      it 'should get have the status code of 204', ->
        expect(@response.metadata.code).to.equal 204

      it 'should return null', ->
        expect(@response.data).to.be.undefined
