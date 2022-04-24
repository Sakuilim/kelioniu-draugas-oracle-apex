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
      // ---------------------------- Test to save data
      // TEST #3
      // Act
      cy.get('#R54885544083813645701_ig_toolbar_actions_button > .a-Icon').click()
      cy.get('#R54885544083813645701_ig_toolbar_11').click()
      cy.get('[data-value="PDF"] > .a-IG-dialog-iconList-link > .a-IG-dialog-iconList-label').click()
      cy.get('.ui-button--hot').click().should('contain','Download')
      // Assert
      // ----------------------------
    })
  })