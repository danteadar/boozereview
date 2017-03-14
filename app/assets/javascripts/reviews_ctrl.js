(function() {
  "use strict";

  angular.module("app").controller("reviewsCtrl", function($scope, $http) {
    $scope.message = "hello world";

    $scope.setup = function() {
      $http.get("http://api.brewerydb.com/v2/beers/?key=#{ENV['BREWERYDB_API_KEY']}&withBreweries=Y").then(function(response) {
        $scope.beers = response.data;
        
      });
    };
  }); 
}());