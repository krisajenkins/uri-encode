/*global Elm */

// setup
Elm.Native = Elm.Native || {};
Elm.Native.Uri = Elm.Native.Uri || {};

// definition
Elm.Native.Uri.make = function (localRuntime) {
    'use strict';

    // attempt to short-circuit
    if ('values' in Elm.Native.Uri) {
        return Elm.Native.Uri.values;
    }

    return Elm.Native.Uri.values = {
        encodeUri: encodeURI,
        encodeUriComponent: encodeURIComponent
    };
};
