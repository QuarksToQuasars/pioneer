module.exports = ->

  @Given /^I enter information and submit$/, ->
    form = new this.Widgets.Form()
    form.enter()

  @Then /^I should see "([^"]*)"$/, (text) ->
    div = new this.Widgets.Div()
    div.getText().should.eventually.eql(text)
