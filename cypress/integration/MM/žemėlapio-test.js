
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
    cy.viewport('macbook-16')
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
    cy.contains('Map').click()
    cy.get('.maplibregl-canvas').then($canvas => {
      const canvasWidth = $canvas.width();
      const canvasHeight = $canvas.height();

      const canvasCenterX = (canvasWidth / 2 ) - 27;
      const canvasCenterY = (canvasHeight / 2 ) - 100;
    // Act
      cy.wrap($canvas)
        .scrollIntoView().wait(5000)
        .click(canvasCenterX,canvasCenterY )

    })
    cy.wait(2000)
    // Assert
    cy.get('#P21_NAME').should('have.value','Rubikių ežeras')
    cy.get('#P21_LONGITUDE').should('have.value','25,287379')
    cy.get('#P21_LATITUDE').should('have.value','55,50079')
    cy.get('#P21_TYPE_ID').should('have.value','4')
  })
})
