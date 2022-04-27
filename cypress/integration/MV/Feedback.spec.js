context('Unit testing APEX', () => {
    
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/login?session=115330830766114'
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
    cy.contains('Orders').click()
    cy.contains('LinciusHerka').click()
    cy.get('#B6982951518531026161').click() //create client\
      cy.get('#B6982946763523026156').click().wait(500)
      cy.contains('Enter all required data!').should('be.visible') 
      cy.wait(1000)
      cy.get('.js-confirmBtn').click()
      cy.get('#P23_NAME').type('Vakaris')
      cy.get('#P23_LAST_NAME').type('Vakaris')
      cy.get('#P23_GENDER').select('Male')
      cy.get('#P23_EMAIL').type('vakaris@vakareja.com')
      cy.get('#P23_PHONE').type('860586697')
      cy.get('#P23_USERNAME').type('Vakaris')
      cy.get('#P23_PASSWORD').type('Vakaris')
      cy.get('#P23_SHIPPING_ADDRESS').type('Vakaris')
      cy.get('#P23_COUNTRY_ID').select('Lietuva')
      cy.get('#P23_CITY_ID').select('Vilnius')
      cy.get('#B6982946763523026156').click()
      cy.contains('Client created!').should('be.visible') 
      cy.wait(1000)
      cy.get('.js-confirmBtn').click()
    //delete
    //cy.get('[class="t-Button t-Button--danger t-Button--simple"]').click() 
    //cy.get('.js-confirmBtn').click().should('exist') // confirm delete
    //cy.get(':nth-child(3) > [headers="ROWID"] > a > [aria-label="Redaguoti"] > .fa').should('not.exist')
  })
})