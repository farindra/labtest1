/**
 * Created by Farindra on 6/20/15.
 */
var app = angular.module('plunker', ['ngTagsInput', 'ngResource']);

app.controller('MainCtrl', function($scope, $resource) {
    var tags = $resource('nama.json');

    $scope.tags = [
    ];

    $scope.loadTags = function(query) {
        return tags.query().$promise;
    };
});
