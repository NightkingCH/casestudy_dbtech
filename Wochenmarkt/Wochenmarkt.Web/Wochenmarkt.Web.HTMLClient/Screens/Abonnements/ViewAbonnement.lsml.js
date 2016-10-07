/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAbonnement.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.Abonnement.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.Abonnement." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

