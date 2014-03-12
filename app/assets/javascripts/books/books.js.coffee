BookApp = angular.module("BookApp",["BookAppCtrls", "BooksRouter"])

BooksRouter = angular.module("BooksRouter",["ngRoute"])

BooksRouter.config(["$routeProvider",
    ($routeProvider)->
        $routeProvider.when("/", {
            templateUrl: "/books",
            controller: "BooksCtrl"
            }).
            when("/books/:id",
            templateUrl: "books/view",
            controller:"BooksDetailsCtrl"
        )
])
