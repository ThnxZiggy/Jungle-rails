
describe('example to-do app', () => {
  beforeEach(() => {
       cy.visit('/')
  })
  it("navigates to the product detail page", () => {
    cy.get(".products article")
    .first()
    .click()
    cy.get('.product-detail')
    .should('have.class', "product-detail")
  });
});
