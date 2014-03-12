BookAppCtrls = angular.module("BookAppCtrls",[])

BookAppCtrls.controller("BooksCtrl", ["$scope", "$http", ($scope, $http)->
  $scope.message = "This is the sites/index.html.erb rendering from <%yield%>"
  $http.get("/books.json").success (data)->
    console.log(data)
    $scope.newBooks = data


])

BookAppCtrls.controller("BDC", ["$scope","$routeParams", "$http",
  ($scope, $routeParams, $http)->
    $scope.bookId = $routeParams.id
    console.log("hello")
    $http.get("/books/" + $scope.bookId + ".json").success (data)->
      console.log(data)
      $scope.bookDetails = data

    ])
