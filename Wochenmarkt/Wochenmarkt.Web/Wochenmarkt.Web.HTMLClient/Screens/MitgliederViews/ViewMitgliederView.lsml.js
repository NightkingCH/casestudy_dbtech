/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewMitgliederView.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.MitgliederView.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.MitgliederView." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

