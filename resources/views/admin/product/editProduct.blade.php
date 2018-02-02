@extends('layouts.app')


@section('content')
<br/>
<hr/>
<h1 class="text-center text-success">Edit Product Form</h1>
<hr/>
<h2 class="text-center text-success">{{Session::get('message') }}</h2>
<hr/>
<div class="row">
	<div class="col-sm-12">
		<div class="well">
			{!! Form::open([ 'route'=>'update-product','name'=>'editProductForm', 'onsubmit'=>"return validateStandard(this)", 'method'=> 'POST', 'class'=> 'form-horizontal','enctype'=>'multipart/form-data']) !!}
				
				<div class="form-group">
					<label for="product_name" class="control-label col-sm-3">Product Name :</label>

					<div class="col-sm-9">
						<input class="form-control" value="{{ $productById->product_name }}"   type="text" name="product_name" id="product_name">
						<input type="hidden" value="{{ $productById->id }}"  name="product_id">
						<span class="text-danger">{{ $errors->has('product_name')?$errors->first('product_name'):'' }}</span>
					
					</div>
				</div>

				<div class="form-group">	
					<label for="category_id" class="control-label col-sm-3">Category Name :</label>

					<div class="col-sm-9">
						<select class="form-control" name="category_id"  required exclude=" " err="Please select valid Category name" id="category_id" >
							<option>--Select Category Name--</option>
							@foreach($publishedCategories as $publishedCategory)
							<option value="{{ $publishedCategory->id }}">{{ $publishedCategory->category_name }}</option>
							@endforeach
						</select>
					</div>
				</div>

				<div class="form-group">	
					<label for="manufacturer_id" class="control-label col-sm-3">Manufacturer Name :</label>

					<div class="col-sm-9">
						<select class="form-control" name="manufacturer_id" id="manufacturer_id">
							<option>--Select Manufacturer Name--</option>
							@foreach($publishedManufacturer as $publishedManufactur)
							<option value="{{ $publishedManufactur->id }}">{{ $publishedManufactur->manufacturer_name }}</option>
							@endforeach
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="product_price" class="control-label col-sm-3">Product Price :</label>

					<div class="col-sm-9">
						<input class="form-control"  type="text" min="1" value="{{ $productById->product_price }}"  name="product_price" id="product_price">
						<span class="text-danger">{{ $errors->has('product_price')?$errors->first('product_price'):'' }}</span>
					
					</div>
				</div>

				<div class="form-group">
					<label for="product_quantity" class="control-label col-sm-3">Product Quantity :</label>

					<div class="col-sm-9">
						<input class="form-control"  type="number" min="1" name="product_quantity" value="{{ $productById->product_quantity }}" id="product_quantity">
						<span class="text-danger">{{ $errors->has('product_quantity')?$errors->first('product_quantity'):'' }}</span>
					
					</div>
				</div>



				<div class="form-group">
					<label for="product_short_description" class="control-label col-sm-3">Product Short Description :</label>

					<div class="col-sm-9">
						<textarea class="form-control" name="product_short_description" id="product_short_description" rows="5" style="resize: vertical;">{{ $productById->product_short_description }}</textarea>
					</div>
				</div>

				<div class="form-group">
					<label for="category_long_description" class="control-label col-sm-3">Product Long Description :</label>

					<div class="col-sm-9">
						<textarea class="form-control" name="category_long_description" id="category_long_description" rows="10" style="resize: vertical;">{{ $productById->product_short_description }}</textarea>
					</div>
				</div>

				<div class="form-group">
					<label for="product_image" class="control-label col-sm-3">Product image :</label>

					<div class="col-sm-9">
						<input type="file" class="form-control" name="product_image" value="{{ $productById->product_image }}" accept="image/*" id="product_image">
						<span class="text-danger">{{ $errors->has('product_image')?$errors->first('product_image'):'' }}</span>
					</div>
				</div>


				<div class="form-group">	
					<label for="publication_status" class="control-label col-sm-3">Publication Status :</label>

					<div class="col-sm-9">
						<select class="form-control" name="publication_status" id="publication_status">
							<option>--Select Publication status--</option>
							<option value="1">Published</option>
							<option value="0">Unpublished</option>
						</select>
					</div>
				</div>

				<div class="form-group">	
					

					<div class="col-sm-9 col-sm-offset-3">
						<input type="submit" name="btn" value="Save Product Info" class="btn btn-success btn-block">
					</div>
				</div>


			{!! Form::close() !!}
		</div>
	</div>
		
</div>

<script>
	// document.forms['editProductForm'].elements['category_id','manufacturer_id','publication_status'].value = '{{ $productById->category_id,$productById->manufacturer_id,$productById->publication_status }}';
	document.forms['editProductForm'].elements['category_id'].value = '{{ $productById->category_id }}';
	document.forms['editProductForm'].elements['manufacturer_id'].value = '{{ $productById->manufacturer_id }}';
	document.forms['editProductForm'].elements['publication_status'].value = '{{ $productById->publication_status }}';
</script>

@endsection