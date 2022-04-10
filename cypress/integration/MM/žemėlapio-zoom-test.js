
context('Unit testing APEX', () => {
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/prisijungimas'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
  var   loggedInPage
  var   app_cookie
  var   pageUrl
 
  it('Visit the page', () => {
    // Arrange
    cy.visit(loginPage)
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
    cy.contains('Map').click()
    // - visit a web page
    // Act
    cy.wait(5000)
    cy.get('.mapboxgl-ctrl-zoom-in > .mapboxgl-ctrl-icon').click()
    // Assert
    cy.get('.mapboxgl-ctrl-scale').should('be.visible')
    cy.get('.mapboxgl-ctrl-scale').should('contain','10')
  })
})
