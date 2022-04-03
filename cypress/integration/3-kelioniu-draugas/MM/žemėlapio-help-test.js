
context('Unit testing APEX', () => {
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/login?session=115330830766114'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
  var   loggedInPage
  var   app_cookie
  var   pageUrl
 
  it('Visit the page', () => {
    // Arrange
    cy.visit(loginPage)
    cy.get('[name^=P10071_USERNAME]').type(pUsername)
    cy.get('[name^=P10071_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
    cy.contains('Map').click()
    // - visit a web page
    // Act
    cy.contains(/^Help$/).click()
    // Assert
    cy.url().should('eq','https://pvprif.atlassian.net/wiki/spaces/PKPRIF/pages/17006593/Map+help')
    
  })
})
