/// <reference path="~/GeneratedArtifacts/viewModel.js" />

myapp.ViewWochenmarkt.Details_postRender = function (element, contentItem) {
    // Write code here.
    var name = contentItem.screen.Wochenmarkt.details.getModel()[':@SummaryProperty'].property.name;
    contentItem.dataBind("screen.Wochenmarkt." + name, function (value) {
        contentItem.screen.details.displayName = value;
    });
}

