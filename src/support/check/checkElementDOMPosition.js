
module.exports = (falseCase, elements, expectedText) => {

	/*browser.div(:id => 'MyTabs').link(:text => 'Languages')
  */
    elements.forEach((element, index) => {
        /**
     * The title of the current browser window
     * @type {String}
     */
    let text = browser.getText(element);

    if (falseCase) {
        expect(text).to.not
            .equal(
                expectedtext,
                `Expected text not to be "${expectedText}"`
            );
    } else {
    	console.log("text", text);
        expect(text).to
            .equal(
                expectedtext,
                `Expected text to be "${expectedText}" but found "${text}"`
            );
    }
    });
};
