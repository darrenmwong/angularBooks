BookAppCtrls = angular.module("BookAppCtrls",[])

BookAppCtrls.controller("BooksCtrl", ["$scope", ($scope)->
  $scope.message = "HHHHHHEEEEEEELLLLLLOOOOOllo world!"
  $scope.fakeBooks = [
      id: 1
      title: "Happy Tails"
      description: "Fun Times"
    ,
      id: 2
      title: "Bog Adventures"
      description: "Muddy Days"
      ]
  console.log $scope.fakeBooks


])

BookAppCtrls.controller("BookDetailsCtrl", ["$scope","$routeParams",
  ($scope, $routeParams)->
    $scope.bookId = $routeParams.id
    ])
