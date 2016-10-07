/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewAbonnement_ArealView.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.Abonnement_ArealView.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.Abonnement_ArealView." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

