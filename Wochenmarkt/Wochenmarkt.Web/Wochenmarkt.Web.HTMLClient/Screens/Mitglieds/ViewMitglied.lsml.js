/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewMitglied.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.Mitglied.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.Mitglied." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

