var module = angular.module("JusticeLeague", [ ] );

module

  .controller("LeagueCtrl", function ($scope, $http) {

    Utils.$scope = $scope;
    Utils.$http = $http;
    $scope.new_member_name = "";
    $scope.new_member_abilities = [];
    $scope.new_ability = "";    

    $scope.members = [
      // { 
      //   name: "Superman",
      //   secret_identity: "Clark Kent",
      //   powers: [ "super strength", "flight", "heat vision", "speed", "x-ray vision" ]
      // },
      // {
      //   name: "Batman",
      //   secret_identity: "Bruce Wayne",
      //   powers: []
      // }
    ];

    $scope.noMembers = function() {
      return $scope.members.length === 0;
    };

    $scope.removeAbility = function(ability) {
      console.log("remoe " + $socability)
    };

    $scope.addAbility = function() {
      console.log("add " + $scope.new_member_ability)
    }

    $scope.saveHero = function() {

    }
  
  });

var Utils = {

  getMembers: function() {
    var url = "/heroes/1.json"
  }

};

