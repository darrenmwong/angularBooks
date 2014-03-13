# BooksService = angular.module("BooksService", ["ngResource"]);
#
# BooksService.factory("BookRes", ["$resource",
#     ($resource)->
#          $resource("/books/:id.json",
#             id : "@id",
#             update : {method: "PATCH"}
#                   )
# ])
