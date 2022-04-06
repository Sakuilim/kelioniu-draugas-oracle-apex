
context('Unit testing APEX', () => {
    const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/'
    const pUsername   = 'admin'
    const pPassword   = 'admin'
    var   loggedInPage
    var   app_cookie
    var   pageUrl
   
    it('Visit the page', () => {
      cy.visit(loginPage)
      cy.get('[name^=P9999_USERNAME]').type(pUsername)
      cy.get('[name^=P9999_PASSWORD]').type(pPassword)
      cy.contains('Sign In').click()
       // Act
      cy.contains(/^Orders$/).click()
       // Assert
      cy.get('.t-MediaList-itemWrap')
      .first()
      .click()

      cy.get('[id="R6982957494849026280_heading"]')
      .should('have.text', 'Clients')
    })
  })
  