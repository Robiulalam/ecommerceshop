@extends('layouts.app')


@section('content')
<br/>
<hr/>
<h1 class="text-center text-success">Edit Category Form</h1>
<hr/>
<h2 class="text-center text-success">{{Session::get('message') }}</h2>
<hr/>
<div class="row">
	<div class="col-sm-12">
		<div class="well">
			{!! Form::open([ 'url'=> '/category/update','name'=>'editCategoryForm', 'method'=> 'POST', 'class'=> 'form-horizontal']) !!}
				
				 <div class="form-group">
					
					{!! Form::label('category_name', 'Category Name	:',  ['class'=>'control-label col-sm-3']) !!}

					<div class="col-sm-9">
					
						{!! Form::text('category_name', $value = $categoryById->category_name, ['class' => 'form-control', 'placeholder'=>'Please Your Value']) !!}

						<input type="hidden" name="category_id" value="{{ $categoryById->id }}">
					</div>
				</div>  

				


				<div class="form-group">
					<label for="category_description" class="control-label col-sm-3">Category Description :</label>

					<div class="col-sm-9">
						<textarea class="form-control" name="category_description" id="category_description" >{{ $categoryById->category_description }}</textarea>
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
						<input type="submit" name="btn" value="Update Category Info" class="btn btn-success btn-block">
					</div>
				</div>


			{!! Form::close() !!}
		</div>
	</div>
		
</div>

<script>
	document.forms['editCategoryForm'].elements['publication_status'].value = '{{ $categoryById->publication_status }}';
</script>

@endsection