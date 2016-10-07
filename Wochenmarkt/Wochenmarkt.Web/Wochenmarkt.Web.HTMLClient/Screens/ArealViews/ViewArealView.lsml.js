/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewArealView.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.ArealView.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.ArealView." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

