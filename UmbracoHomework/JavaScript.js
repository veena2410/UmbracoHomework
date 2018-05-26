$.validator.unobtrusive.adapters.add("validation", ["minage"], function (options) {
    options.rules["validation"] = options.params;
    options.messages["validation"] = options.message;
});

$.validator.addMethod("validation", function (value, elements, params) {
    if (value) {
        var valDate = new Date(value);
        if ((new Date().getFullYear() - valDate.getFullYear()) < parseInt(params.minage) 
        ) {
            return false;
            //validation failed
        }
    }
    return true;
});