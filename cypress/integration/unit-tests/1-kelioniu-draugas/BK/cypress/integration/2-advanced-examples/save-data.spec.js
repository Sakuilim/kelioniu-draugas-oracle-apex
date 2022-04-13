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
      // ---------------------------- Search by words
      // TEST #1
      // Act
      cy.get('#R23510289328294114531 > .t-HeroRegion-wrap').should('be.visible')
      cy.get('#R54885544083813645701_ig_toolbar_search_field').type('Puntukas').click(cy.get('.a-Toolbar-group--search > .js-actionButton > .a-Button-label'))
      // Assert
      cy.get('[data-id="22"] > .u-tS').should('contain','Rubikių ežeras')
      cy.get('.a-Toolbar-groupContainer--end > .a-Toolbar-group > .a-Button > .a-Button-label').click()
      // ----------------------------
    })
  })