BookApp = angular.module("BookApp",["BookAppCtrls", "BooksRouter"])


BookApp.config(["$httpProvider", ($httpProvider)->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
  ])



BooksRouter = angular.module("BooksRouter",["ngRoute"])

BooksRouter.config(["$routeProvider",
    ($routeProvider)->
        $routeProvider.when("/",
            templateUrl: "/books",
            controller: "BooksCtrl"
            ).
            when("/books/:id",
            templateUrl: "books/view",
            controller:"BDC"
            ).
            when("/books/:format",
              templateUrl: "/books",
              controller: "BooksCtrl"
            )
])
