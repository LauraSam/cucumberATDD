/**
 * Check if the given element exists in the current DOM
 * @param  {String}   selector  Element selector
 * @param  {String}   falseCase Whether to check if the element exists or not
 */
module.exports = (selector, falseCase, expectedText) => {
    /**
     * Elements found in the DOM
     * @type {Object}
     */
    let command = 'getText';

    const elements = browser.elements(selector).value;
    // const elementsText = browser.elements(selector).value;
    // console.log('element menu horizontal', elements);

    /* console.log('element getText', browser[command](elements[0].selector));*/
    // const text = browser[command](element);
    const textArray = browser[command](elements[0].selector);

    /*   for (var i = 0; i < elements.length; i++) {
           console.log("*******************************")
           console.log ('elements[i]', elements[i]);
       }*/

    let stringExpectedText = expectedText;
    let boolFalseCase;
    if (typeof expectedText === 'undefined') {
        stringExpectedText = falseCase;
        boolFalseCase = false;
    } else {
        boolFalseCase = (falseCase === ' not');
    }


    for (var i = 0; i < textArray[i].length; i++) {
        console.log('The element selected in arrival menu ,', $$( '.menu li'));
      
        if (textArray[i].toLowerCase() == stringExpectedText.toLowerCase()) {
            console.log("***************----------****************")
            console.log('The menu selected is:', textArray[i]);
            console.log('The expected text is:', stringExpectedText);
             // var location = browser.getLocation('');

            browser.keys("Enter");
            return;
        } {
            browser.keys("ArrowRight");
            browser.pause("2000");
            console.log('Not the good menu text', textArray[i]);
        }

    }
    return;

};
