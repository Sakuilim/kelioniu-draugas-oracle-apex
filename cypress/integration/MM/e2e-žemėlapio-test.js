
context('Unit testing APEX', () => { // Vartotojo prijungimo duomenys
  const loginPage  = 'https://apex.oracle.com/pls/apex/idework/r/game-shop/prisijungimas'
  const pUsername   = 'admin'
  const pPassword   = 'admin'
  var   loggedInPage
  var   app_cookie
  var   pageUrl

  it('Visit the page', () => {
    // Arrange
    cy.viewport('macbook-16')
    cy.visit(loginPage) // Prisijungiama prie sistemos
    cy.get('[name^=P9999_USERNAME]').type(pUsername)
    cy.get('[name^=P9999_PASSWORD]').type(pPassword)
    cy.contains('Sign In').click()
    cy.contains('Base Data').click()
    //Act

    cy.wait(1000)
    cy.get('#R23510289328294114531 > .t-HeroRegion-wrap > .t-HeroRegion-col--left > .t-HeroRegion-icon').click()
    cy.get('#R23516342934171422326_actions_button').click()
    cy.get('#R23516342934171422326_actions_menu_0i').click()
    cy.wait(1000)
    cy.get('#R23516342934171422326_shuttle_right').select('Ilguma') // pakeiciam stulpelius, kuriuos norime matyti
    cy.wait(1000)
    cy.get('[onclick="g_Shuttlep_v01.remove(); return false;"] > .a-Icon').click()
    cy.wait(1000)
    cy.get('#R23516342934171422326_shuttle_right').select('Platuma')
    cy.wait(1000)
    cy.get('[onclick="g_Shuttlep_v01.remove(); return false;"] > .a-Icon').click()
    cy.get('.ui-button--hot').click()
    cy.get('#R23516342934171422326_actions_button > .a-Icon').click()
    cy.wait(2000)
    cy.get('#R23516342934171422326_actions_menu_2 > .a-Menu-inner > .a-Menu-labelContainer').click()
    cy.wait(2000)
    cy.get('#R23516342934171422326_expression').type('Labanoro Giria') // paspaudžia išskleisti duomenis
    cy.get('.ui-button--hot').click()
    cy.get('#R23516342934171422326_actions_button > .a-Icon').click()
    cy.get('#R23516342934171422326_actions_menu_6i').click()
    cy.get('#R23516342934171422326_chart_label').select('Pavadinimas')// pasirenkam diagramos duomenis
    cy.get('#R23516342934171422326_chart_value').select('Ilguma')
    cy.get('#R23516342934171422326_aggregate_by').select('Sum')
    cy.get('.ui-button--hot').click()
    cy.get('.a-IRR-controls-item--filter > .a-IRR-controls-cell--remove > .a-Button > .a-Icon').click()// istrinam diagrama
    cy.wait(1500)
    cy.get('.a-IRR-controls-item--chart > .a-IRR-controls-cell--remove > .a-Button > .a-Icon').click()
    cy.wait(1500)
    cy.get('#R23516342934171422326_actions_button').click()
    cy.get('#R23516342934171422326_actions_menu_7i').click()
    cy.get('#R23516342934171422326_group_by_column_01').select('Platuma')
    cy.get('.ui-button--hot').click()
    cy.get('.a-IRR-controls-cell--remove > .a-Button > .a-Icon').click()
    cy.wait(1500)
    cy.get('#R23516342934171422326_actions_button > .a-Icon').click()
    cy.get('#R23516342934171422326_actions_menu_10 > :nth-child(1) > .a-Menu-accelContainer > .a-Menu-subMenuCol > .a-Icon').click()// sukuriam reporta
    cy.get('#R23516342934171422326_actions_menu_10_0i').click()
    cy.get('#R23516342934171422326_report_name').type('test')
    cy.get('#R23516342934171422326_report_description').type('test')
    cy.get('.ui-button--hot').click()
    cy.get('.a-IRR-controls-cell--remove > .a-Button > .a-Icon').click()
    cy.get('.ui-button--hot').click()
    cy.get('#B23516346400580422328 > .t-Button-label').click()

  })
})
