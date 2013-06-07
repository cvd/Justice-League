var module = angular.module("JusticeLeague", [ ] );

module

  .controller("LeagueCtrl", function ($scope, $http) {

    Utils.$scope = $scope;
    Utils.$http = $http;
    $scope.new_member_name = "";
    $scope.new_member_secret_identity = "";
    $scope.new_member_abilities = [];
    $scope.new_ability = "";    

    $scope.members = [];

    $scope.safeApply = function(fn) {
      var phase = this.$root.$$phase;
      if(phase == '$apply' || phase == '$digest') {
        if(fn && (typeof(fn) === 'function')) {
          fn();
        }
      } else {
        this.$apply(fn);
      }
    };

    $scope.noMembers = function() {
      return $scope.members.length === 0;
    };

    $scope.removeHero = function(id) {

    };

    $scope.removeAbility = function(ability) {
      var index = $scope.new_member_abilities.indexOf( ability );
      if ( index > -1 ) {
        $scope.new_member_abilities.splice( index, 1 );
      }
    };

    $scope.addAbility = function() {
      if ( $scope.new_member_abilities.indexOf( $scope.new_member_ability ) === -1  && $scope.new_member_ability !== "" ) {
        $scope.new_member_abilities.push( $scope.new_member_ability );
        $scope.new_member_ability = ""
      }
    }

    $scope.saveHero = Utils.saveHero.bind( Utils );

    $scope.addMember = function(hero) {
      console.log(arguments)
    }

    $scope.onHeroes = function(heroes) {
      $scope.members = heroes;
      console.log(heroes)
    }

    Utils.getMembers();
  
  });

var Utils = {

  getMembers: function() {
    var self = this;
    var url = "/heroes.json"
    this.$http({
      method: "GET",
      url: url
    })

    .error( function(){ console.error(argumetns)} )

    .success( self.$scope.onHeroes )
  },

  saveHero: function() {
    var $scope = this.$scope;
    var $http = this.$http;

    var data = {
      name: $scope.new_member_name,
      secret_identity: $scope.new_member_secret_identity,
      abilities: $scope.new_member_abilities
    };

    $http({
      method: "POST",
      url: "/heroes.json",
      data: data
    })

    .error( function(){ console.error("an error"); console.error(arguments) } )

    .success( $scope.addMember )

  }

};

