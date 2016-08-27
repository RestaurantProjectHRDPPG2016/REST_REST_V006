
var checkIsDefined = function(val){
	if (typeof name !== "undefined" && val != undefined)
		return val;
	return '';
}

$(document).ready(function() {
	$("#searchbtn").click(function() {
		$("#mysearchbtn").toggle();
	});

	$("#location").click(function() {
		$("#	mylocation").toggle();
	});

	$(document).on('mouseenter', '.default', function() {
		$(this).hide();
		$(this).next().show();
	});

	$(document).on('mouseleave', '.cover', function() {
		$(this).hide();
		$(this).prev().show();
	});

});

var app = angular.module('myApp', []);
app.controller('adminCtrl', function($scope, $http, $window, $rootScope) {

	// TODO: define base url
	// var BASE_URL = "http://localhost:";

	// TODO: declare user object
	var MAINCATEGORY = {};

	// TODO: default filter
	$scope.filter = {
		page : 1,
		limit : 18
	};

	// TODO:
	$scope.paging = {};

	// TODO:
	var PAGINATION = angular.element('#pagination');

	// TODO: load Pagination
	MAINCATEGORY.loadPagination = function(response) {

		// TODO: Initialize pagination setting
		$scope.paging = {
			totalPages : response.Pagination.TOTAL_PAGES,
			totalRecords : response.Pagination.TOTAL_COUNT,
			currentPage : response.Pagination.PAGE,
			limit : response.Pagination.LIMIT
		};
		// TODO:
		PAGINATION.bootpag({
			total : $scope.paging.totalPages,
			page : $scope.paging.currentPage,
			leaps : true,
			firstLastUse : true,
			first : '←',
			last : '→',
			prev : 'Prev',
			next : 'Next',
			maxVisible : 100
		});
	};

	// TODO: add listener to page click
	PAGINATION.on("page", function(event, pageNumber) {
		$scope.filter.page = pageNumber;
		MAINCATEGORY.selectCategory();
	});

	$scope.$watch('province', function(newValue) {
		$rootScope.subprovinceId = newValue;
	});

	$scope.$watch('district', function(newValue) {
		$rootScope.subdistrictId = newValue;
	});

	$scope.$watch('commune', function(newValue) {
		$rootScope.subcommuneId = newValue;
	});
	
	$scope.$watch('category', function(newValue) {
		$rootScope.subCategoryId = newValue;
	});

	MAINCATEGORY.selectCategory = function() {
		$http({
			url : 'http://localhost:8888/maincategory',
			params : $scope.filter,
			method : 'GET'
		}).then(function(objcat) {
			$scope.myCat = objcat.data.DATA;
			MAINCATEGORY.loadPagination(objcat.data);
		}, function(response) {
			alert("fail");
		});
	}
	
	MAINCATEGORY.selectCategoryNoPagin = function() {
		$http({
			url : 'http://localhost:8888/maincategory',
			method : 'GET'
		}).then(function(response) {
			$scope.myCatNP = response.data.DATA;
		}, function(response) {
			alert("fail");
		});
	}
	MAINCATEGORY.selectCategoryNoPagin();

	// TODO: Reload data again
	MAINCATEGORY.reload = function(filter) {
		$scope.filter = filter;
		MAINCATEGORY.selectCategory();
	};
	MAINCATEGORY.selectCategory();

	$scope.deleteCategory = function(myid) {
		$http({
			url : 'http://localhost:8888/maincategory/' + myid,
			method : 'DELETE'
		}).then(function(objcat) {
			$scope.selectCategory();
		}, function(response) {
			alert('failed');
		})
	}

	$scope.changeMode = function(mode) {
		if (mode == 0) {
			$scope.name = "";
			$scope.img1 = "";
			$scope.img2 = "";
			$scope.t_id = "";
			$("#addCat").show();
			$("#updateCat").hide();
		}
	};
	$scope.addCategory = function() {
		var filename1 = $('#img1').val();
		var filename2 = $('#img2').val();
		if (filename1.substring(3, 11) == 'fakepath') {
			filename1 = filename1.substring(12, filename1.length);
		}
		if (filename2.substring(3, 11) == 'fakepath') {
			filename2 = filename2.substring(12, filename2.length);
		}
		$http({
			url : 'http://localhost:8888/maincategory/',
			method : 'POST',
			data : {
				'name' : $scope.name,
				't_id' : $scope.rest_type,
				'img1' : filename1,
				'img2' : filename2
			}
		}).then(function(response) {

			$scope.selectCategory();
		}, function(response) {
			alert('failed');
		});
	}

	$scope.editCategory = function(newData) {
		$("#addCat").hide();
		$("#updateCat").show();
		$scope.id = newData.c.id;
		$scope.img1 = newData.c.img1;
		$scope.img2 = newData.c.img2;
		$scope.name = newData.c.name;
		$scope.t_id = newData.c.t_id;
	}
	$scope.updateCategory = function() {
		$http({
			url : 'http://localhost:8888/maincategory/',
			method : 'PUT',
			data : {
				'id' : $scope.id,
				'name' : $scope.name,
				'img1' : $scope.img1,
				'img2' : $scope.img2,
				't_id' : $scope.t_id
			}
		}).then(function(response) {
			$scope.selectCategory();
		}, function(response) {
			alert("fail maincateory put");
		});
	}

	/* ****************** Start Restaurant Type****************** */

	// GetALL Type of restaurant
	$scope.getRestType = function() {
		$http({
			url : 'http://localhost:8888/resttype',
			method : 'GET'
		}).then(function(response) {
			$scope.myrestType = response.data.DATA;

		}, function(response) {
			alert('failed');
		});
	}
	$scope.getRestType();

	$scope.addRestType = function() {
		$http({
			url : 'http://localhost:8888/resttype/',
			method : 'POST',
			data : {
				'name' : $scope.name
			}
		}).then(function(response) {
			$scope.getRestType();
		}, function(response) {
			alert('failed');
		});
	}

	$scope.deleteRestType = function(id) {
		$http({
			url : 'http://localhost:8888/resttype/' + id,
			method : 'DELETE'
		}).then(function(objcat) {
			$scope.getRestType();
		}, function(response) {
			alert('failed');
		})
	}

	$scope.changeRestType = function(mymode) {
		if (mymode == 1) {
			$scope.name = "";
			$("#add").show();
			$("#update").hide();
		}
	};

	$scope.editRestType = function(mynew) {
		$("#add").hide();
		$("#update").show();
		$scope.id = mynew.rt.id;
		$scope.name = mynew.rt.name;
	}

	$scope.updateRestType = function() {
		$http({
			url : 'http://localhost:8888/resttype/',
			method : 'PUT',
			data : {
				'id' : $scope.id,
				'name' : $scope.name
			}
		}).then(function(response) {
			$scope.getRestType();
		}, function(response) {
			alert("fail");
		});
	}

	/* End Restaurant Type */

	// GetProvince
	$scope.getProvince = function() {
		$http({
			url : 'http://localhost:8888/cities',
			method : 'GET'
		}).then(function(response) {
			$scope.myProvince = response.data.DATA;
		}, function(response) {
			alert('failed To call all data');
		});
	}
	$scope.getProvince();

	// GetDistrict
	$scope.getDistrict = function(province) {
		$http({
			url : 'http://localhost:8888/cities/' + province.id + '/districts',
			method : 'GET'
		}).then(function(response) {

			$scope.myDistrict = response.data.DATA;
		}, function(response) {
			alert('failed To call all data');
		});
	}

	// Getcommune
	$scope.getCommune = function(district) {
		$http(
				{
					url : 'http://localhost:8888/districts/' + district.id
							+ '/commnunes',
					method : 'GET'
				}).then(function(response) {
			$scope.myCommune = response.data.DATA;
		}, function(response) {
	
		});
	}
	$scope.communeChange = function(communeforsearch) {
		$scope.filter.commune = communeforsearch.id;

	}
});

/* Start Resturant Controller */

app.controller('restCtrl',function($scope, $http, $window, $rootScope) {
					// TODO: declare user object
					var RESTAURANT = {};
			
					$scope.filter = {
						page : 1,
						limit : 12,
						name : (typeof name === "undefined") ? '' : name,
						c_id : (typeof category === "undefined") ? ''
								: category,
						province : (typeof province === "undefined") ? ''
								: province,
						district : (typeof district === "undefined") ? ''
								: district,
						commune : (typeof commune === "undefined") ? ''
								: commune,
					};

					$scope.categoryChange = function(c) {
					};

					// TODO:
					$scope.paging = {};

					// TODO:
					var PAGINATION = angular.element('#paginationRest');

					// TODO: load Pagination
					RESTAURANT.loadPagination = function(response) {

						// TODO: Initialize pagination setting
						$scope.paging = {
							totalPages : response.Pagination.TOTAL_PAGES,
							totalRecords : response.Pagination.TOTAL_COUNT,
							currentPage : response.Pagination.PAGE,
							limit : response.Pagination.LIMIT
						};
						// TODO:
						PAGINATION.bootpag({
							total : $scope.paging.totalPages,
							page : $scope.paging.currentPage,
							leaps : true,
							firstLastUse : true,
							first : '←',
							next : 'Next',
							prev : 'Prev',
							last : '→',
							maxVisible : 12
						});
					};

					// TODO: add listener to page click
					PAGINATION.on("page", function(event, pageNumber) {
						$scope.filter.page = pageNumber;
						RESTAURANT.getRest();
					});



					// GetALL
					RESTAURANT.getRest = function() {
						$http({
							url : 'http://localhost:8888/restaurant',
							params : $scope.filter,
							method : 'GET'

						})
								.then(
										function(response) {
											$scope.rest = response.data.DATA;
											RESTAURANT
													.loadPagination(response.data);
											if ($scope.rest.length <= 0) {
												$("#notfound").show();
											}

										},
										function(response) {
											
										});
					}
					RESTAURANT.getRest();

					$scope.search = function() {
						$scope.filter.name = ($scope.nameforsearch == undefined) ? ''
								: $scope.nameforsearch;
						$scope.filter.c_id = ($scope.categoryforsearch == undefined) ? ''
								: $scope.categoryforsearch.id;
						$scope.filter.province = ($scope.provinceforsearch == undefined) ? ''
								: $scope.provinceforsearch.id;
						$scope.filter.district = ($scope.districtforsearch == undefined) ? ''
								: $scope.districtforsearch.id;
						$scope.filter.commune = ($scope.communeforsearch == undefined) ? ''
								: $scope.communeforsearch.id;

						$window.location.href = "/search_result?name="
								+ $scope.filter.name + "&category="
								+ $scope.filter.c_id + "&province="
								+ $scope.filter.province + "&district="
								+ $scope.filter.district + "&commune="
								+ $scope.filter.commune;

					}
					
					$scope.searchRestAdmin = function(){
						alert("Search");
					}

					// TODO: Reload data again
					$scope.reload = function(filter) {
						$scope.filter = filter;
						RESTAURANT.getRest();
					};
					var images =[];
					var menus =[];
					RESTAURANT.addRestaurant = function() {
						b = true;
						$scope.btnButton = 'Save';
						
						var frmData = new FormData();
						var tel = $('input[name=tel]');

						$.each(tel, function(key, e) {
							frmData.append('telephones', $(e).val());
						});

						//var restaurant_files = angular.element('#img')[0].files;
						for (var i = 0; i < newFiles['img'].length; i++) {
							frmData.append("image", newFiles['img'][i]);
						}

						//var menu_files = angular.element('#menus')[0].files;

						for (var i = 0; i < newFiles['menus'].length; i++) {
							frmData.append("menus", newFiles['menus'][i]);
						}
						frmData.append('name',checkIsDefined($scope.name));
						frmData.append('type', checkIsDefined($rootScope.subCategoryId));
						frmData.append('description', checkIsDefined($scope.desc));
						frmData.append('delivery', ($scope.delivery == undefined) ? 'No' : 'Yes'); 
						frmData.append('home', checkIsDefined($scope.home));
						frmData.append('street', checkIsDefined($scope.street));
						frmData.append('province', ($scope.province == undefined) ? '' : $scope.province.id);
						frmData.append('commune',($scope.commune == undefined) ? '' : $scope.commune.id);
						frmData.append('district', ($scope.district == undefined) ? '' : $scope.district.id);
						
						frmData.append('latitude', checkIsDefined($scope.latitude));
						frmData.append('longitude', checkIsDefined($scope.longitude));

						$http({
							url : 'http://localhost:8888/restaurant',
							method : 'POST',
							data : frmData,
							transformRequest : angular.identity,
							headers : {
								'Content-Type' : undefined
							}
						})
								.then(
										function(response) {
											RESTAURANT.getRest();
										},
										function(error) {
											alert('failed to upload data! Please Try again Youra !!!!!');
											RESTAURANT.getRest();
										});
					}
					var btnButton = '';
					var title ='';
					$scope.event = function() {
						if (b == true) {
							RESTAURANT.addRestaurant();
						} else {
							RESTAURANT.updateRestaurant();
						}
					}

					$scope.addButton = function() {
						b = true;
						$scope.btnButton = 'ADD';
						$scope.title = 'Add New Restaurant';
					}
					$scope.getupdateRestauratn = function(rest) {
						
							$("#myprovince").hide();
							$("#mydistrict").hide();
							$("#mycommune").hide();
					
						
						b = false;
						$scope.btnButton = 'UPDATE';
						$scope.title='Update Restaurant Information';
						id = rest.r.id;
						$scope.name = rest.r.name;
						$scope.category = rest.r.sub_id + '';
						$scope.delivery = rest.r.delivery;
						$scope.desc = rest.r.desc;
						$scope.home = rest.r.home;
						$scope.street = rest.r.street;
//						$scope.district = rest.r.district;
//						$scope.commune = rest.r.commune;
						$scope.latitude = rest.r.latitude;
						$scope.longitude = rest.r.longitude;

//						angular.forEach($scope.myProvince, function(item) {
//							if (item.khmer_name === rest.r.province) {
//								$scope.province = item;
//								$scope.getDistrict(item.id);
//								return;
//					}
//						
//					});

//						angular.forEach($scope.myDisctrict, function(item) {
//							if (item.khmer_name === rest.r.disctrict) {
//								$scope.district = item;
//								return;
//							}
//						});
//
//						angular.forEach($scope.myCommune, function(item) {
//							if (item.khmer_name === rest.r.commune) {
//								$scope.commune = item;
//								return;
//							}
//						});

						$scope.sampleRest = [];
						$scope.sampleMenu = [];
						 
						$.each(rest.r.images, function(index, item){
							var restImage = {
									id  : item.id,
									name: '',
									type: "image/jpg",
									size: '',
									file: 'http://localhost:8888/' + item.url
							}
							$scope.sampleRest.push(restImage);
						});
						
						$scope.myfun();
						
						$.each(rest.r.menus, function(index, item){
							var menuImage = {
									id  : item.id,
									name: '',
									type: "image/jpg",
									size: '',
									file: 'http://localhost:8888/' + item.url
							}
							$scope.sampleMenu.push(menuImage);
						});
						
						
						$scope.mymenus();
					}
					
					$scope.myfun=function(){
						for(var i in images){
							$scope.sample1 = images[i].url
							}
					}
					$scope.mymenus=function(){
						for(var i in menus){
							$scope.sample2 =menus[i].url
						}
					}			  

					RESTAURANT.updateRestaurant = function() {
						var frmData = new FormData();
						var tel = $('input[name=tel]');

						$.each(tel, function(key, e) {
							frmData.append('telephones', $(e).val());
						});
						//var restaurant_files = angular.element('#img')[0].files;
						for (var i = 0; i < newFiles['img'].length; i++) {
							frmData.append("image", newFiles['img'][i]);
						}

						//var menu_files = angular.element('#menus')[0].files;

						for (var i = 0; i < newFiles['menus'].length; i++) {
							frmData.append("menus", newFiles['menus'][i]);
						}

						// deletedImageIDs['img']
						// deletedImagesIDs['menus']
						for (var i = 0; i < deletedImageIDs['img'].length; i++) {
							frmData.append("deletedImageIds", deletedImageIDs['img'][i]);
						}
						
						for (var i = 0; i < deletedImageIDs['menus'].length; i++) {
							frmData.append("deletedMenuIds", deletedImageIDs['menus'][i]);
						}
						
						
						
						frmData.append('id', id);
						frmData.append('name', $scope.name);
						frmData.append('type', $rootScope.subCategoryId);
						frmData.append('description', $scope.desc);
						frmData.append('delivery', $scope.delivery);
						frmData.append('home', $scope.home);
						frmData.append('street', $scope.street);
//						frmData.append('province', $scope.province.id);
//						frmData.append('district', $scope.district.id);
//						frmData.append('commune', $scope.commune.id);
						frmData.append('latitude', $scope.latitude);
						frmData.append('longitude', $scope.longitude);

						$http({
							url : 'http://localhost:8888/restaurantUpdate',
							method : 'POST',
							data : frmData,
							transformRequest : angular.identity,
							headers : {
								'Content-Type' : undefined
							}
						})
								.then(
										function(response) {
											RESTAURANT.getRest();
										},
										function(error) {
											alert('failed to upload data! Please Try again Youra !!!!!');
										});
					}
					$scope.deleteRestaurant = function(id) {
						$http({
							url : 'http://localhost:8888/restaurant/'+id,
							method : 'DELETE'
						}).then(function(response) {
						
							$scope.getRest();
						}, function(response) {
							alert('failed');
						})
					}
					
				});

app
		.controller(
				'MyAdCtrl',
				function($scope, $http, $window, $rootScope) {
					// GetRestaurant By ID

					$scope.getRestByID = function(id) {
						$http({
							url : 'http://localhost:8888/restaurant/' + id,
							method : 'GET',
						}).then(function(response) {
							$scope.restByID = response.data.DATA;
								init_map($scope.restByID[0].latitude, $scope.restByID[0].longitude,$scope.restByID[0].name,$scope.restByID[0].province,$scope.restByID[0].street);
						}, function(response) {
							alert('failed To call all data');
						});
					}
					$scope.getRestByID(rest_id);
					
					$scope.rating = 0;
				    $scope.ratings = [ {
				        current: 3,
				        max: 5
				    }];

				    $scope.getSelectedRating = function (rating) {
				    }
				    
				    $scope.setMinrate= function(){
				       $scope.ratings = [{
				        current: 1,
				        max: 5
				    }];
				    }
				    
				    $scope.setMaxrate= function(){
				       $scope.ratings = [{
				        current: 10,
				        max: 10
				    }, {
				        current: 5,
				        max: 5
				    }];
				  }
				  
				  $scope.sendRate = function(){
				    alert("Thanks for your rates!\n\nFirst Rate: " + $scope.ratings[0].current+"/"+$scope.ratings[0].max
				    +"\n"+"Second rate: "+ $scope.ratings[1].current+"/"+$scope.ratings[0].max)
				  }
					
				  $scope.addtoFaorite = function(r_id){
			    		if(isLogin=="false"){
			    			$window.location.href="/login";
			    		}
			    		rest_id =r_id;
			    		$scope.saveAddToFavorite();
			    }
				  $scope.saveAddToFavorite = function() {
						 u_id=user_id;
						 alert("userID:"+userid);
						 alert("U_ID"+u_id);
						 r_id = rest_id;
		    			$http({
		    				url : 'http://localhost:8888/addtofavorite',
		    				method : 'POST',
		    				data : {
		    					'm_id' : user_id,
		    					'r_id' : r_id
		    				}
		    			}).then(function(response) {
		    				alert("Success add to favorite");
		    			}, function(response) {
		    				alert('failed');
		    			});
		    		}
			    
				  
				  
				})
.directive('starRating', function () {
    return {
        restrict: 'A',
        template: '<ul class="rating">' +
            '<li ng-repeat="star in stars" ng-class="star" ng-click="toggle($index)">' +
            '\u2605' +
            '</li>' +
            '</ul>',
        scope: {
            ratingValue: '=',
            max: '=',
            onRatingSelected: '&'
        },
        link: function (scope, elem, attrs) {

            var updateStars = function () {
                scope.stars = [];
                for (var i = 0; i < scope.max; i++) {
                    scope.stars.push({
                        filled: i < scope.ratingValue
                    });
                }
            };

            scope.toggle = function (index) {
                scope.ratingValue = index + 1;
                scope.onRatingSelected({
                    rating: index + 1
                });
            };

            scope.$watch('ratingValue', function (oldVal, newVal) {
                if (newVal) {
                    updateStars();
                }
            });
        }
    }
});

/* ENd Restuarant Controller */

app.controller('MyCatCtrl', function($scope, $http, $window, $rootScope) {
	// GetRestaurant By ID
	// getRestaurantByCategory(Cate ID)

	// TODO: declare user object
	var RESTAURANT = {};

	// TODO: default filter
	$scope.filter = {
		page : 1,
		limit : 12
	};

	// TODO:
	$scope.paging = {};

	// TODO:
	var PAGINATION = angular.element('#paginationbyCategory');

	// TODO: load Pagination
	RESTAURANT.loadPagination = function(response) {

		// TODO: Initialize pagination setting
		$scope.paging = {
			totalPages : response.Pagination.TOTAL_PAGES,
			totalRecords : response.Pagination.TOTAL_COUNT,
			currentPage : response.Pagination.PAGE,
			limit : response.Pagination.LIMIT
		};
		// TODO:
		PAGINATION.bootpag({
			total : $scope.paging.totalPages,
			page : $scope.paging.currentPage,
			leaps : true,
			firstLastUse : true,
			first : '←',
			last : '→',
			next : 'Next',
			prev : 'Prev',
			maxVisible : 12
		});
	};

	// TODO: add listener to page click
	PAGINATION.on("page", function(event, pageNumber) {
		$scope.filter.page = pageNumber;
		RESTAURANT.getRest();
	});

	RESTAURANT.getRestaurantByCategory = function(cat_id) {
		$http({
			url : 'http://localhost:8888/restaurant/category/' + cat_id,
			params : $scope.filter,
			method : 'GET'
		}).then(function(response) {
			$scope.MyCategories = response.data.DATA;
			RESTAURANT.loadPagination(response.data);
			if ($scope.MyCategories.length <= 0) {
				$("#notfound").show();
			}

		}, function(response) {
		});
	}

	// TODO: Reload data again
	$scope.reload = function(filter) {
		$scope.filter = filter;
		RESTAURANT.getRestaurantByCategory(cat_id);
	};
	RESTAURANT.getRestaurantByCategory(cat_id);
});

app.controller('MyTypeCtrl', function($scope, $http, $window, $rootScope) {
	// getRestaurantByType(Type ID)
	RESTAURANT.getRestaurantByType = function(type_id) {
		$http({
			url : 'http://localhost:8888/restaurant/type/' + type_id,
			params : $scope.filter,
			method : 'GET'
		}).then(function(response) {
			$scope.MyRestType = response.data.DATA;
			RESTAURANT.loadPagination(response.data);
			if ($scope.MyRestType.length <= 0) {
				$("#notfound").show();
			}

		}, function(response) {
		});
	}
	// TODO: Reload data again
	$scope.reload = function(filter) {
		$scope.filter = filter;
		RESTAURANT.getRestaurantByType(type_id);
	};
	RESTAURANT.getRestaurantByType(type_id);

});

//***************USER ADD To Favorite Ctrl*******

app.controller('addToFavoriteCtrl',function($scope, $http, $window, $rootScope) {
	
	$scope.getRestaurantByAddToFavorite = function(id) {
		alert(id);
		$http({
			url : 'http://localhost:8888/restaurant/user/save/' + id,
			params : $scope.filter,
			method : 'GET'
		}).then(function(response) {
			console.log(response);
			$scope.myaddToFavorite = response.data.DATA;
			if ($scope.myaddToFavorite.length <= 0) {
				$("#notfound").show();
			}
			$window.location.href="/user";
		}, function(response) {
			console.log(response);
		});
	}

});

//				add and update
				app.directive('myFilter', [function() {
				return {
				  restrict: 'A',       
				  link: function(scope, element) {
				      // wait for the last item in the ng-repeat then call init
				      angular.element(document).ready(function() {
				          initJqueryFiler(['#img','#menus'], [[],[]]);
				      });
				      // OR use $braodcast & $on in Controller
				  }
				};
				/**** Usable array ****/
				// If your input file, id = '#gallery' use:
				// => newFiles['gallery']
				// => deletedImageIDs['gallery']
				
				}]);
				
				app.directive('filerInit', [function() {
					return {
					  restrict: 'A',       
					  link: function(scope, element) {
					      // wait for the last item in the ng-repeat then call init
					      if (scope.$last){
					    	    $('div.jFiler.jFiler-theme-dragdropbox').remove();
					    		$('#restSampleInit > span:last-child').after('<input type="file" name="files[]" id="img" multiple="multiple">');
					    		$('#menuSampleInit > span:last-child').after('<input type="file" name="files[]" id="menus" multiple="multiple">');
					    	   initJqueryFiler(['#img','#menus'], [scope.sampleRest, scope.sampleMenu]);
					      }
					      // OR use $braodcast & $on in Controller
					  }
					};
				}]);

$(".filer-fancybox").fancybox({
    padding: 0,

    openEffect : 'elastic',
    openSpeed  : 150,

    closeEffect : 'elastic',
    closeSpeed  : 150,

    closeClick : true,

    helpers : {
        overlay : null
    }
});

// Clear Sample Uploaded Image Item
$('#myModal1').on('hidden.bs.modal', function () {
	$('div.jFiler.jFiler-theme-dragdropbox').remove();
	$('#restSampleInit > span:last-child').after('<input type="file" name="files[]" id="img" multiple="multiple">');
	$('#menuSampleInit > span:last-child').after('<input type="file" name="files[]" id="menus" multiple="multiple">');
	initJqueryFiler(['#img','#menus'], [[],[]]);
});


