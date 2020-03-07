$(document).ready(function () {

	/*
	* Category***
	* */
	function format ( d ) {
		var div_element = $('<div class="col-md-12 col-sm-12 col-xs-12">' +
								'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Last Year Sales: <small class="content">'+d.others.last_year_sales+'</small></label></div>'+
								'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Sales Year Over Year: <small class="content">'+d.others.sales_year+'</small></label></div>'+
								'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Sales Trend(90 days): <small class="content">'+d.others.sales_trend+'</small></label></div>'+
								'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Price Trend(90 days): <small class="content">'+d.others.price_trend+'</small></label></div>'+
								'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Best Sales Period: <small class="content">'+d.others.best_sales_period+'</small></label></div>'+
								'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Sales To Reviews: <small class="content">'+d.others.sales_to_reviews+'</small></label></div>'+
							'</div>'
		);
		return div_element;
	}

	var table_bigdata_category = $('#table_bigdata_category').DataTable( {
		responsive: true,
		processing: true,
		"ajax": {
			"url": base_url+"user/services/BigData/getCategoryCompletionData",
			"type": "POST"
		},
		"columns": [
			{
				"className": 'details-control',
				"orderable": false,
				"data": null,
				"defaultContent": ''
			},
			{ "data": 'asin_info' },
			{ "data": 'product' },
			{ "data": 'sellers' },
			{ "data": 'price' },
			{ "data": 'monthly_sales' },
			{ "data": 'monthly_revenue' },
			{ "data": 'sales_rank' },
			{ "data": 'reviews' }
		],
		columnDefs: [
			{
				targets: 1,
				title: "ASIN",
				render: function (data, type, full, meta) {
					return `
                            <div>
                                <a href="http://www.`+data['market_url']+`/dp/`+data['asin']+`" class="row_asin_number"  target="_blank" style="text-decoration: underline;">`+data['asin']+`</a>
                            </div>
                            `;
				}
			},
			{
				targets: 2,
				title: 'PRODUCT',
				render: function(data, type, full, meta) {

					console.log(data);
					var title = data['title']!=null?data['title']:'';
					var category = data['category']!=null?data['category']:'';
					var brand = data['brand']!=null?data['brand']:'';
					var fulfillment = data['fulfillment']!=null?data['fulfillment']:'';

					return `
                            <div style="text-align: left; margin-left: 20px;">
                                <div class="col-md-8 col-sm-8 col-xs-8"><label class="control-label">Title: <small class="content">`+title+`</small></label></div>
                                <div class="col-md-4 col-sm-4 col-xs-4"><label class="control-label">Size Tier: <small class="content">`+data['size_tier']+`</small></label></div>
                                <div class="col-md-8 col-sm-8 col-xs-8"><label class="control-label">Category: <small class="content">`+category+`</small></label></div>
                                <div class="col-md-4 col-sm-4 col-xs-4"><label class="control-label">Number of Images: <small class="content">`+data['num_image']+`</small></label></div>
                                <div class="col-md-8 col-sm-8 col-xs-8"><label class="control-label">Brand: <small class="content">`+brand+`</small></label></div>
                                <div class="col-md-4 col-sm-4 col-xs-4"><label class="control-label">Variation Count: <small class="content">`+data['variation_cnt']+`</small></label></div>
                                <div class="col-md-8 col-sm-8 col-xs-8"><label class="control-label">Fulfillment: <small class="content">`+fulfillment+`</small></label></div>
                                <div class="col-md-4 col-sm-4 col-xs-4"><label class="control-label">Weight: <small class="content">`+data['weight']+`</small></label></div>
                            </div>
                            `;
				}
			},
			{
				targets: -1,
				title: 'REVIEWS',
				render: function(data, type, full, meta) {

					console.log(data);

					var str_rating = '';
					if (data['rating']==-1)
					{
						for (var i=0; i<5; i++)
							str_rating += '<i class="fa fa-star-o" style="color: #fc8c14;"></i>';

					}
					else
					{
						var cnt = Math.round(data['rating']);

						for (var i=0; i<cnt; i++)
							str_rating += '<i class="fa fa-star" style="color: #fc8c14;"></i>';

						if (data['rating']>cnt)
						{
							cnt ++;
							str_rating += '<i class="fa fa-star-half-o" style="color: #fc8c14;"></i>';
						}

						for (var i=0; i<(5-cnt); i++)
							str_rating += '<i class="fa fa-star-o" style="color: #fc8c14;"></i>';
					}

					return `
						<div>
							<div><label>`+data['count']+`</label></div>
							<div>`+str_rating+`</div>
							<div><label>`+data['rating']+`</label></div>
						</div>
						`;
				}
			}
		],
		"order": [[1, 'asc']]
	} );

	$('#table_bigdata_category tbody').on('click', 'td.details-control', function () {
		var tr = $(this).closest('tr');
		var row = table_bigdata_category.row( tr );
		if ( row.child.isShown() ) {
			// This row is already open - close it
			row.child.hide();
			tr.removeClass('shown');
		}
		else {
			// Open this row
			if(row.child() && row.child().length)
			{
				row.child.show();
			}
			else {
				row.child( format(row.data()) ).show();
			}
			tr.addClass('shown');
		}
	} );

	var daterange_category_best_period = $('#daterange_category_best_period');
	if (isRealValue(daterange_category_best_period))
	{
		make_date_range_picker_bigdata(daterange_category_best_period);
	}

	//--- Change Market Place ---//
	$('#category_market_place').change(function () {
		var market_id = $(this).val();
		// alert(market_id);

		$.ajax({
			url: base_url + 'user/services/BigData/getMarketCategory',
			method: 'POST',
			data: {market_id: market_id},
			dataType: 'json',
			async: false,
			success: function(datas){

				$('#category_market_category').empty();
				$.each(datas, function (i, data) {
					$('#category_market_category').append($('<option>', {
						value: data.id,
						text : data.category_name
					}));
				});
			}
		});
	});

	$('#category_form').on('submit', function () {

		var market_id = $('#category_market_place').val();
		var market_category = $('#category_market_category').val();

		if (market_category==='' || market_category==null)
			return false;

		var format = /[1-9.]/;

		var category_revenue_min = $('#category_revenue_min').val();
		var category_revenue_max = $('#category_revenue_max').val();
		if ( (category_revenue_min!='' && !format.test(category_revenue_min)) || (category_revenue_max!='' && !format.test(category_revenue_max)) )
		{
			popUpToast('warning', 'Monthly Revenue must only contain numbers.');
			return;
		}

		var category_price_min = $('#category_price_min').val();
		var category_price_max = $('#category_price_max').val();
		if ( (category_price_min!='' && !format.test(category_price_min)) || (category_price_max!='' && !format.test(category_price_max)) )
		{
			popUpToast('warning', 'Price must only contain numbers.');
			return;
		}

		var category_review_count_min = $('#category_review_count_min').val();
		var category_review_count_max = $('#category_review_count_max').val();
		if ( (category_review_count_min!='' && !format.test(category_review_count_min)) || (category_review_count_max!='' && !format.test(category_review_count_max)) )
		{
			popUpToast('warning', 'Review Count must only contain numbers.');
			return;
		}

		var category_review_rating_min = $('#category_review_rating_min').val();
		var category_review_rating_max = $('#category_review_rating_max').val();
		if ( (category_review_rating_min!='' && !format.test(category_review_rating_min)) || (category_review_rating_max!='' && !format.test(category_review_rating_max)) )
		{
			popUpToast('warning', 'Review Rating must only contain numbers.');
			return;
		}

		var category_sales_year_min = $('#category_sales_year_min').val();
		var category_sales_year_max = $('#category_sales_year_max').val();
		if ( (category_sales_year_min!='' && !format.test(category_sales_year_min)) || (category_sales_year_max!='' && !format.test(category_sales_year_max)) )
		{
			popUpToast('warning', 'Sales Year Over Year(%) must only contain numbers.');
			return;
		}

		var category_price_change_min = $('#category_price_change_min').val();
		var category_price_change_max = $('#category_price_change_max').val();
		if ( (category_price_change_min!='' && !format.test(category_price_change_min)) || (category_price_change_max!='' && !format.test(category_price_change_max)) )
		{
			popUpToast('warning', 'Price Change(%) must only contain numbers.');
			return;
		}

		var category_sales_change_min = $('#category_sales_change_min').val();
		var category_sales_change_max = $('#category_sales_change_max').val();
		if ( (category_sales_change_min!='' && !format.test(category_sales_change_min)) || (category_sales_change_max!='' && !format.test(category_sales_change_max)) )
		{
			popUpToast('warning', 'Sales Change(%) must only contain numbers.');
			return;
		}

		var category_sales_review_min = $('#category_sales_review_min').val();
		var category_sales_review_max = $('#category_sales_review_max').val();
		if ( (category_sales_review_min!='' && !format.test(category_sales_review_min)) || (category_sales_review_max!='' && !format.test(category_sales_review_max)) )
		{
			popUpToast('warning', 'Sales Change(%) must only contain numbers.');
			return;
		}

		var category_sales_month_min = $('#category_sales_month_min').val();
		var category_sales_month_max = $('#category_sales_month_max').val();
		if ( (category_sales_month_min!='' && !format.test(category_sales_month_min)) || (category_sales_month_max!='' && !format.test(category_sales_month_max)) )
		{
			popUpToast('warning', 'Monthly Sales(Units) must only contain numbers.');
			return;
		}

		var category_sales_rank_min = $('#category_sales_rank_min').val();
		var category_sales_rank_max = $('#category_sales_rank_max').val();
		if ( (category_sales_rank_min!='' && !format.test(category_sales_rank_min)) || (category_sales_rank_max!='' && !format.test(category_sales_rank_max)) )
		{
			popUpToast('warning', 'Best Sales Rank(BSR) must only contain numbers.');
			return;
		}

		var category_seller_num_min = $('#category_seller_num_min').val();
		var category_seller_num_max = $('#category_seller_num_max').val();
		if ( (category_seller_num_min!='' && !format.test(category_seller_num_min)) || (category_seller_num_max!='' && !format.test(category_seller_num_max)) )
		{
			popUpToast('warning', 'Number of Sellers must only contain numbers.');
			return;
		}

		var category_images_num_min = $('#category_images_num_min').val();
		var category_images_num_max = $('#category_images_num_max').val();
		if ( (category_images_num_min!='' && !format.test(category_images_num_min)) || (category_images_num_max!='' && !format.test(category_images_num_max)) )
		{
			popUpToast('warning', 'Number of Images must only contain numbers.');
			return;
		}

		var category_variation_count_min = $('#category_variation_count_min').val();
		var category_variation_count_max = $('#category_variation_count_max').val();
		if ( (category_variation_count_min!='' && !format.test(category_variation_count_min)) || (category_variation_count_max!='' && !format.test(category_variation_count_max)) )
		{
			popUpToast('warning', 'Variation Count must only contain numbers.');
			return;
		}

		var category_weight_min = $('#category_weight_min').val();
		var category_weight_max = $('#category_weight_max').val();
		if ( (category_weight_min!='' && !format.test(category_weight_min)) || (category_weight_max!='' && !format.test(category_weight_max)) )
		{
			popUpToast('warning', 'Weight(lb) must only contain numbers.');
			return;
		}

		var category_shipping_tier = $('#category_shipping_tier').val();
		var daterange_category_best_period = $('#daterange_category_best_period').val();
		var category_fulfillment = $('#category_fulfillment').val();
		var category_include_keyword = $('#category_include_keyword').val();
		var category_exclude_keyword = $('#category_exclude_keyword').val();

		$.ajax({
			url: base_url + 'user/services/bigData/searchCategory',
			method: 'POST',
			data:{
				service_id: 16,
				market_id: market_id,
				category_id: market_category,
				revenue_min: category_revenue_min,
				revenue_max: category_revenue_max,
				price_min: category_price_min,
				price_max: category_price_max,
				review_cnt_min: category_review_count_min,
				review_cnt_max: category_review_count_max,
				review_rating_min: category_review_rating_min,
				review_rating_max: category_review_rating_max,
				shipping_tier: category_shipping_tier,
				sales_year_min: category_sales_year_min,
				sales_year_max: category_sales_year_max,
				price_change_min: category_price_change_min,
				price_change_max: category_price_change_max,
				sales_change_min: category_sales_change_min,
				sales_change_max: category_sales_change_max,
				best_sales_period: daterange_category_best_period,
				sales_review_min: category_sales_review_min,
				sales_review_max: category_sales_review_max,
				monthly_sales_min: category_sales_month_min,
				monthly_sales_max: category_sales_month_max,
				sales_rank_min: category_sales_rank_min,
				sales_rank_max: category_sales_rank_max,
				seller_num_min: category_seller_num_min,
				seller_num_max: category_seller_num_max,
				fulfillment: category_fulfillment,
				image_num_min: category_images_num_min,
				image_num_max: category_images_num_max,
				variation_cnt_min: category_variation_count_min,
				variation_cnt_max: category_variation_count_max,
				weight_min: category_weight_min,
				weight_max: category_weight_max,
				in_keywords: category_include_keyword,
				ex_keywords: category_exclude_keyword
			},
			type: 'text',
			async: false,
			success: function (data) {
				popUpToast('success', 'Success!');
			}
		});

		return false;
	});

	/*
	* Advertising***
	* */
	function format ( d ) {
		var div_element = $('<div class="col-md-12 col-sm-12 col-xs-12">' +
			'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Last Year Sales: <small class="content">'+d.others.last_year_sales+'</small></label></div>'+
			'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Sales Year Over Year: <small class="content">'+d.others.sales_year+'</small></label></div>'+
			'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Sales Trend(90 days): <small class="content">'+d.others.sales_trend+'</small></label></div>'+
			'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Price Trend(90 days): <small class="content">'+d.others.price_trend+'</small></label></div>'+
			'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Best Sales Period: <small class="content">'+d.others.best_sales_period+'</small></label></div>'+
			'<div class="col-md-2 col-sm-2 col-xs-12"><label class="control-label">Sales To Reviews: <small class="content">'+d.others.sales_to_reviews+'</small></label></div>'+
			'</div>'
		);
		return div_element;
	}

	var table_bigdata_advertising = $('#table_bigdata_advertising').DataTable( {
		responsive: true,
		processing: true,
		"ajax": {
			"url": base_url+"user/services/BigData/getAdvertisingCompletionData",
			"type": "POST"
		},
		"columns": [
			{
				"className": 'details-control',
				"orderable": false,
				"data": null,
				"defaultContent": ''
			},
			{ "data": 'asin_info' },
			{ "data": 'product' },
			{ "data": 'sellers' },
			{ "data": 'price' },
			{ "data": 'monthly_sales' },
			{ "data": 'monthly_revenue' },
			{ "data": 'sales_rank' },
			{ "data": 'reviews' }
		],
		columnDefs: [
			{
				targets: 1,
				title: "ASIN",
				render: function (data, type, full, meta) {
					return `
                            <div>
                                <a href="http://www.`+data['market_url']+`/dp/`+data['asin']+`" class="row_asin_number"  target="_blank" style="text-decoration: underline;">`+data['asin']+`</a>
                            </div>
                            `;
				}
			},
			{
				targets: 2,
				title: 'PRODUCT',
				render: function(data, type, full, meta) {

					console.log(data);
					var title = data['title']!=null?data['title']:'';
					var category = data['category']!=null?data['category']:'';
					var brand = data['brand']!=null?data['brand']:'';
					var fulfillment = data['fulfillment']!=null?data['fulfillment']:'';

					return `
                            <div style="text-align: left; margin-left: 20px;">
                                <div class="col-md-8 col-sm-8 col-xs-8"><label class="control-label">Title: <small class="content">`+title+`</small></label></div>
                                <div class="col-md-4 col-sm-4 col-xs-4"><label class="control-label">Size Tier: <small class="content">`+data['size_tier']+`</small></label></div>
                                <div class="col-md-8 col-sm-8 col-xs-8"><label class="control-label">Category: <small class="content">`+category+`</small></label></div>
                                <div class="col-md-4 col-sm-4 col-xs-4"><label class="control-label">Number of Images: <small class="content">`+data['num_image']+`</small></label></div>
                                <div class="col-md-8 col-sm-8 col-xs-8"><label class="control-label">Brand: <small class="content">`+brand+`</small></label></div>
                                <div class="col-md-4 col-sm-4 col-xs-4"><label class="control-label">Variation Count: <small class="content">`+data['variation_cnt']+`</small></label></div>
                                <div class="col-md-8 col-sm-8 col-xs-8"><label class="control-label">Fulfillment: <small class="content">`+fulfillment+`</small></label></div>
                                <div class="col-md-4 col-sm-4 col-xs-4"><label class="control-label">Weight: <small class="content">`+data['weight']+`</small></label></div>
                            </div>
                            `;
				}
			},
			{
				targets: -1,
				title: 'REVIEWS',
				render: function(data, type, full, meta) {

					console.log(data);

					var str_rating = '';
					if (data['rating']==-1)
					{
						for (var i=0; i<5; i++)
							str_rating += '<i class="fa fa-star-o" style="color: #fc8c14;"></i>';

					}
					else
					{
						var cnt = Math.round(data['rating']);

						for (var i=0; i<cnt; i++)
							str_rating += '<i class="fa fa-star" style="color: #fc8c14;"></i>';

						if (data['rating']>cnt)
						{
							cnt ++;
							str_rating += '<i class="fa fa-star-half-o" style="color: #fc8c14;"></i>';
						}

						for (var i=0; i<(5-cnt); i++)
							str_rating += '<i class="fa fa-star-o" style="color: #fc8c14;"></i>';
					}

					return `
						<div>
							<div><label>`+data['count']+`</label></div>
							<div>`+str_rating+`</div>
							<div><label>`+data['rating']+`</label></div>
						</div>
						`;
				}
			}
		],
		"order": [[1, 'asc']]
	} );

	$('#table_bigdata_advertising tbody').on('click', 'td.details-control', function () {
		var tr = $(this).closest('tr');
		var row = table_bigdata_advertising.row( tr );
		if ( row.child.isShown() ) {
			// This row is already open - close it
			row.child.hide();
			tr.removeClass('shown');
		}
		else {
			// Open this row
			if(row.child() && row.child().length)
			{
				row.child.show();
			}
			else {
				row.child( format(row.data()) ).show();
			}
			tr.addClass('shown');
		}
	} );

	var daterange_advertising_best_period = $('#daterange_advertising_best_period');
	if (isRealValue(daterange_advertising_best_period))
	{
		make_date_range_picker_bigdata(daterange_advertising_best_period);
	}

	//--- Change Market Place ---//
	$('#advertising_market_place').change(function () {
		var market_id = $(this).val();
		// alert(market_id);

		$.ajax({
			url: base_url + 'user/services/BigData/getMarketCategory',
			method: 'POST',
			data: {market_id: market_id},
			dataType: 'json',
			async: false,
			success: function(datas){

				$('#advertising_market_category').empty();
				$.each(datas, function (i, data) {
					$('#advertising_market_category').append($('<option>', {
						value: data.id,
						text : data.category_name
					}));
				});
			}
		});
	});

	$('#advertising_form').on('submit', function () {

		var market_id = $('#advertising_market_place').val();
		var product_asin = $('#advertising_product_asin').val();
		var market_category = $('#advertising_market_category').val();
		if (product_asin=='' || market_category=='' || market_category==null)
		{
			return;
		}

		var format1 = /[!@#$%^&*()_+\-=\[\]{};':"\\|,`.<>\/?]/;
		if (format1.test(product_asin))
		{
			popUpToast('warning', 'Don\'t input special characters in ASIN.');
			return;
		}

		if (product_asin.length!=10)
		{
			popUpToast('warning', 'You must only input 10 characters in ASIN.');
			return;
		}

		var format = /[1-9.]/;

		var advertising_revenue_min = $('#advertising_revenue_min').val();
		var advertising_revenue_max = $('#advertising_revenue_max').val();
		if ( (advertising_revenue_min!='' && !format.test(advertising_revenue_min)) || (advertising_revenue_max!='' && !format.test(advertising_revenue_max)) )
		{
			popUpToast('warning', 'Monthly Revenue must only contain numbers.');
			return;
		}

		var advertising_price_min = $('#advertising_price_min').val();
		var advertising_price_max = $('#advertising_price_max').val();
		if ( (advertising_price_min!='' && !format.test(advertising_price_min)) || (advertising_price_max!='' && !format.test(advertising_price_max)) )
		{
			popUpToast('warning', 'Price must only contain numbers.');
			return;
		}

		var advertising_review_count_min = $('#advertising_review_count_min').val();
		var advertising_review_count_max = $('#advertising_review_count_max').val();
		if ( (advertising_review_count_min!='' && !format.test(advertising_review_count_min)) || (advertising_review_count_max!='' && !format.test(advertising_review_count_max)) )
		{
			popUpToast('warning', 'Review Count must only contain numbers.');
			return;
		}

		var advertising_review_rating_min = $('#advertising_review_rating_min').val();
		var advertising_review_rating_max = $('#advertising_review_rating_max').val();
		if ( (advertising_review_rating_min!='' && !format.test(advertising_review_rating_min)) || (advertising_review_rating_max!='' && !format.test(advertising_review_rating_max)) )
		{
			popUpToast('warning', 'Review Rating must only contain numbers.');
			return;
		}

		var advertising_sales_year_min = $('#advertising_sales_year_min').val();
		var advertising_sales_year_max = $('#advertising_sales_year_max').val();
		if ( (advertising_sales_year_min!='' && !format.test(advertising_sales_year_min)) || (advertising_sales_year_max!='' && !format.test(advertising_sales_year_max)) )
		{
			popUpToast('warning', 'Sales Year Over Year(%) must only contain numbers.');
			return;
		}

		var advertising_price_change_min = $('#advertising_price_change_min').val();
		var advertising_price_change_max = $('#advertising_price_change_max').val();
		if ( (advertising_price_change_min!='' && !format.test(advertising_price_change_min)) || (advertising_price_change_max!='' && !format.test(advertising_price_change_max)) )
		{
			popUpToast('warning', 'Price Change(%) must only contain numbers.');
			return;
		}

		var advertising_sales_change_min = $('#advertising_sales_change_min').val();
		var advertising_sales_change_max = $('#advertising_sales_change_max').val();
		if ( (advertising_sales_change_min!='' && !format.test(advertising_sales_change_min)) || (advertising_sales_change_max!='' && !format.test(advertising_sales_change_max)) )
		{
			popUpToast('warning', 'Sales Change(%) must only contain numbers.');
			return;
		}

		var advertising_sales_review_min = $('#advertising_sales_review_min').val();
		var advertising_sales_review_max = $('#advertising_sales_review_max').val();
		if ( (advertising_sales_review_min!='' && !format.test(advertising_sales_review_min)) || (advertising_sales_review_max!='' && !format.test(advertising_sales_review_max)) )
		{
			popUpToast('warning', 'Sales Change(%) must only contain numbers.');
			return;
		}

		var advertising_sales_month_min = $('#advertising_sales_month_min').val();
		var advertising_sales_month_max = $('#advertising_sales_month_max').val();
		if ( (advertising_sales_month_min!='' && !format.test(advertising_sales_month_min)) || (advertising_sales_month_max!='' && !format.test(advertising_sales_month_max)) )
		{
			popUpToast('warning', 'Monthly Sales(Units) must only contain numbers.');
			return;
		}

		var advertising_sales_rank_min = $('#advertising_sales_rank_min').val();
		var advertising_sales_rank_max = $('#advertising_sales_rank_max').val();
		if ( (advertising_sales_rank_min!='' && !format.test(advertising_sales_rank_min)) || (advertising_sales_rank_max!='' && !format.test(advertising_sales_rank_max)) )
		{
			popUpToast('warning', 'Best Sales Rank(BSR) must only contain numbers.');
			return;
		}

		var advertising_seller_num_min = $('#advertising_seller_num_min').val();
		var advertising_seller_num_max = $('#advertising_seller_num_max').val();
		if ( (advertising_seller_num_min!='' && !format.test(advertising_seller_num_min)) || (advertising_seller_num_max!='' && !format.test(advertising_seller_num_max)) )
		{
			popUpToast('warning', 'Number of Sellers must only contain numbers.');
			return;
		}

		var advertising_images_num_min = $('#advertising_images_num_min').val();
		var advertising_images_num_max = $('#advertising_images_num_max').val();
		if ( (advertising_images_num_min!='' && !format.test(advertising_images_num_min)) || (advertising_images_num_max!='' && !format.test(advertising_images_num_max)) )
		{
			popUpToast('warning', 'Number of Images must only contain numbers.');
			return;
		}

		var advertising_variation_count_min = $('#advertising_variation_count_min').val();
		var advertising_variation_count_max = $('#advertising_variation_count_max').val();
		if ( (advertising_variation_count_min!='' && !format.test(advertising_variation_count_min)) || (advertising_variation_count_max!='' && !format.test(advertising_variation_count_max)) )
		{
			popUpToast('warning', 'Variation Count must only contain numbers.');
			return;
		}

		var advertising_weight_min = $('#advertising_weight_min').val();
		var advertising_weight_max = $('#advertising_weight_max').val();
		if ( (advertising_weight_min!='' && !format.test(advertising_weight_min)) || (advertising_weight_max!='' && !format.test(advertising_weight_max)) )
		{
			popUpToast('warning', 'Weight(lb) must only contain numbers.');
			return;
		}

		var advertising_shipping_tier = $('#advertising_shipping_tier').val();
		var daterange_advertising_best_period = $('#daterange_advertising_best_period').val();
		var advertising_fulfillment = $('#advertising_fulfillment').val();
		var advertising_include_keyword = $('#advertising_include_keyword').val();
		var advertising_exclude_keyword = $('#advertising_exclude_keyword').val();

		$.ajax({
			url: base_url + 'user/services/bigData/searchAdvertising',
			method: 'POST',
			data:{
				service_id: 17,
				asin: product_asin,
				market_id: market_id,
				category_id: market_category,
				revenue_min: advertising_revenue_min,
				revenue_max: advertising_revenue_max,
				price_min: advertising_price_min,
				price_max: advertising_price_max,
				review_cnt_min: advertising_review_count_min,
				review_cnt_max: advertising_review_count_max,
				review_rating_min: advertising_review_rating_min,
				review_rating_max: advertising_review_rating_max,
				shipping_tier: advertising_shipping_tier,
				sales_year_min: advertising_sales_year_min,
				sales_year_max: advertising_sales_year_max,
				price_change_min: advertising_price_change_min,
				price_change_max: advertising_price_change_max,
				sales_change_min: advertising_sales_change_min,
				sales_change_max: advertising_sales_change_max,
				best_sales_period: daterange_advertising_best_period,
				sales_review_min: advertising_sales_review_min,
				sales_review_max: advertising_sales_review_max,
				monthly_sales_min: advertising_sales_month_min,
				monthly_sales_max: advertising_sales_month_max,
				sales_rank_min: advertising_sales_rank_min,
				sales_rank_max: advertising_sales_rank_max,
				seller_num_min: advertising_seller_num_min,
				seller_num_max: advertising_seller_num_max,
				fulfillment: advertising_fulfillment,
				image_num_min: advertising_images_num_min,
				image_num_max: advertising_images_num_max,
				variation_cnt_min: advertising_variation_count_min,
				variation_cnt_max: advertising_variation_count_max,
				weight_min: advertising_weight_min,
				weight_max: advertising_weight_max,
				in_keywords: advertising_include_keyword,
				ex_keywords: advertising_exclude_keyword
			},
			type: 'text',
			async: false,
			success: function (data) {
				popUpToast('success', 'Success!');
			}
		});

		return false;
	});

	//--- Common ---//
	function popUpToast(status, message){

		// Counter for dashboard stats
		// $('.counter').counterUp({
		//     delay: 10,
		//     time: 1000
		// });

		// Welcome notification
		toastr.options = {
			"closeButton": true,
			"debug": false,
			"newestOnTop": false,
			"progressBar": false,
			"positionClass": "toast-top-right",
			"preventDuplicates": false,
			"onclick": null,
			"showDuration": "300",
			"hideDuration": "1000",
			"timeOut": "5000",
			"extendedTimeOut": "1000",
			"showEasing": "swing",
			"hideEasing": "linear",
			"showMethod": "fadeIn",
			"hideMethod": "fadeOut"
		}
		toastr[status]( message );

		// alert(status+":"+message);
	}

	function isRealValue(obj)
	{
		return obj && obj !== 'null' && obj !== 'undefined' && obj.length > 0;
	}

	function make_date_range_picker_bigdata(obj){
		obj.dateRangePicker({
			autoClose: true,
			singleDate : true,
			showShortcuts: false,
			singleMonth: true,
			format: 'MMM YYYY',
			monthSelect: true,
			yearSelect: true,
			customArrowPrevSymbol: '<i class="fa fa-arrow-circle-left"></i>',
			customArrowNextSymbol: '<i class="fa fa-arrow-circle-right"></i>'
		});
	}

});
