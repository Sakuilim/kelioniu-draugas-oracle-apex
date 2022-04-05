
context('Unit testing APEX', () => {
    const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/prisijungimas?session=16779305017243'
    const pUsername   = 'admin'
    const pPassword   = 'admin'
    var   loggedInPage
    var   app_cookie
    var   pageUrl
   
    it('Visit the page', () => {
      // Arrange
      cy.viewport('macbook-16')
      cy.visit(loginPage)
      cy.get('[name^=P9999_USERNAME]').type(pUsername)
      cy.get('[name^=P9999_PASSWORD]').type(pPassword)
      cy.contains('Sign In').click()
      cy.contains('Base Data').click()
      cy.contains('Miestai').click()
      // - visit a web page
      // Act
      cy.get('.ui-button').click()
      //cy.contains('"R33359252349759949893_search_field"').type('Vilnius')
            // Assert
      //cy.frameLoaded()
     // cy.iframe().contains('Rubikių').should('be visible').click()
    })
  })
  