﻿/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewBeurteilung.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.Beurteilung.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.Beurteilung." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

