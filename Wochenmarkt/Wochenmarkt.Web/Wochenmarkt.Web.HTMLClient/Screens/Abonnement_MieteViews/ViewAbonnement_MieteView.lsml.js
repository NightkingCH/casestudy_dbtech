/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAbonnement_MieteView.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.Abonnement_MieteView.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.Abonnement_MieteView." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

