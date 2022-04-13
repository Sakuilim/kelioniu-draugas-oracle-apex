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
      // ---------------------------- Test to sort data
      // TEST #2
      // Act
      cy.get('#R54885544083813645701_ig_toolbar_actions_button > .a-Icon').click()
      cy.get('#R54885544083813645701_ig_toolbar_3i').click()
      cy.get('#R54885544083813645701_ig_toolbar_3_0').click()
      cy.get('#R54885544083813645701_ig_SD_COLUMN').select('54885544424232645705')
      cy.get('.ui-button--hot').click()
      // Assert
      cy.wait(2000)
      cy.get('#R54885544083813645701_ig_grid_vc_status').should('contain','1 rows selected')
      cy.get('.a-Toolbar-groupContainer--end > .a-Toolbar-group > .a-Button > .a-Button-label').click()
      // ----------------------------
    })
  })