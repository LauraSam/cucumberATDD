/**
 * Submit the given form
 * @param  {String}   form Form element selector
 */
module.exports = (form) => {
   /* console.log('form',form);*/
    browser.submitForm(form);
};
