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
      cy.get(':nth-child(1) > .t-MediaList-itemWrap').click()
      cy.wait(1000)
      cy.get('.t-AVPList > :nth-child(6)').should('be.visible') //email is visible

      cy.get(':nth-child(2) > .t-MediaList-itemWrap').click()
      cy.wait(1000)
      cy.get('.t-AVPList > :nth-child(6)').should('be.visible')

      cy.get(':nth-child(3) > .t-MediaList-itemWrap').click()
      cy.wait(1000)
      cy.get('.t-AVPList > :nth-child(6)').should('be.visible')

      cy.get(':nth-child(4) > .t-MediaList-itemWrap').click()
      cy.wait(1000)
      cy.get('.t-AVPList > :nth-child(6)').should('be.visible')

      cy.get(':nth-child(5) > .t-MediaList-itemWrap').click()
      cy.wait(1000)
      cy.get('.t-AVPList > :nth-child(6)').should('be.visible')

      cy.get(':nth-child(6) > .t-MediaList-itemWrap').click()
      cy.wait(1000)
      cy.get('.t-AVPList > :nth-child(6)').should('be.visible')

      cy.get(':nth-child(7) > .t-MediaList-itemWrap').click()
      cy.wait(1000)
      cy.get('.t-AVPList > :nth-child(6)').should('be.visible')

      cy.get(':nth-child(5) > .t-MediaList-itemWrap').click()
      cy.wait(1000)
      cy.get('#edit_master_btn').click().wait(500)
      cy.get('#P23_PASSWORD').type('Password')
      cy.get('#B6982946323777026156').click()   // edit password
      cy.get('.js-confirmBtn').click().wait(1000)

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

      cy.get(':nth-child(9) > .t-MediaList-itemWrap').click() //delete client
      cy.get('#edit_master_btn').click()
      cy.get('#B6982945927356026156').click()
      cy.contains('Ar tikrai norite ištrinti įrašą?').should('be.visible')
      cy.wait(1000)
      cy.get('.js-confirmBtn').click()

      cy.contains('Client not chosen').should('be.visible') //searchas
      cy.get('#P22_SEARCH').type("lincius{enter}")
      cy.get(':nth-child(5) > .t-MediaList-itemWrap').click().wait(500)
      cy.get('#B6982977552578026352').click().wait(500)

      cy.get('#P24_DISCOUNT_ID').select('50% (Black Friday)') // manual uzsakymas
      cy.get('#P24_ORDER_INFO').type('Linciaus lemonos paguoda')
      cy.get('#P24_ORDER_RETURN_NUMBER').type('404')
      cy.get('#B6982987995299026410').click().wait(1000)
      cy.contains('Order created!').should('be.visible')
      cy.get('.js-confirmBtn').click()

      cy.get(':nth-child(1) > [headers="ORDER_INFO"]').should('be.visible')

      //order delete
      cy.get(':nth-child(2) > [headers="ROWID"] > a > [aria-label="Redaguoti"] > .fa').click().wait(1000)
      cy.get('#B6982987161490026409').click().wait(1000)
      cy.contains('Ar tikrai norite ištrinti įrašą?').should('be.visible')
      cy.get('.js-confirmBtn').click()
      cy.wait(2000)
      cy.contains('Linciaus lemonos paguoda').should('not.exist');

      
      cy.contains('Orders').click()
    })
  })