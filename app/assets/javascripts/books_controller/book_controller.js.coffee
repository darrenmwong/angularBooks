BookAppCtrls = angular.module("BookAppCtrls",[])

BookAppCtrls.controller("BooksCtrl", ["$scope", "$http", ($scope, $http)->
  $scope.message = "This is the sites/index.html.erb rendering from <%yield% that won't dynamically load"
  $scope.save = ()->
    formData = {
      description: @book.description
      title: @book.title
    }
    $http({
      method: "POST"
      url: "/books.json",
      data: { books: formData }
      }).
        success((data)->
          console.log(data)
          console.log($scope.newBooks)
          $scope.newBooks.push(data)
          console.log($scope.newBooks)
          )


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

# BookAppCtrls.controller("FormCtrl", ["$scope", "http",
#   ($scope, $http)->
#     $scope.save = ()->
#       console.log("posting Data")
#       formData = $scope.form
#       console.log(formData)
#
#
# ])
