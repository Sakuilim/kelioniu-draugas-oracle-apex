
context('Unit testing APEX', () => { // Vartotojo prijungimo duomenys
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/prisijungimas'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
  var   loggedInPage
  var   app_cookie
  var   pageUrl
 
  it('Visit the page', () => { 
    // Arrange
    cy.visit(loginPage) // Prisijungiama prie sistemos
    cy.viewport('macbook-16')
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
    cy.contains('Map').click()
    // - visit a web page
    // Act
    cy.wait(8000)
    cy.get('.mapboxgl-ctrl-zoom-out > .mapboxgl-ctrl-icon').click() // paspaudžiama ant atitraukimo mygtuko
    // Assert
    cy.get('.mapboxgl-ctrl-scale').should('be.visible') // mastelis turi matytis
    cy.get('.mapboxgl-ctrl-scale').should('contain','50') // mastelis turi būti 50
    cy.get('.mapboxgl-ctrl-scale').should('contain','km') // mastelis turi rodyti kilometrais
  })
})
