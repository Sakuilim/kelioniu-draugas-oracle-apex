
context('Unit testing APEX', () => {
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/prisijungimas?session=16779305017243'
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
    cy.get('[class=mapboxgl-canvas]').then($canvas => {
      const canvasWidth = $canvas.width();
      const canvasHeight = $canvas.height();

      const canvasCenterX = (canvasWidth / 2 ) - 27;
      const canvasCenterY = (canvasHeight / 2 ) - 100;
    // Act
      cy.wrap($canvas)
        .scrollIntoView().wait(5000)
        .click(canvasCenterX,canvasCenterY )

    })
    // Assert
    cy.frameLoaded()
  })
})
