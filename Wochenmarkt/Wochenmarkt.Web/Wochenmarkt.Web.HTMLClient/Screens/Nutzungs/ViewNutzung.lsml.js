/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewNutzung.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.Nutzung.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.Nutzung." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

