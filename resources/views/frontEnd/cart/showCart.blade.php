@extends('frontEnd.layouts.master')

@section('title')
	Cart
@endsection


@section('content')
<hr/>
<h3 class="text-center text-success" >{{ Session::get('message') }}</h3>
<hr/>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<table class="table table-bordered">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Price</th>
					<th>Quantity</th>
					<th>Total</th>
					<th>Action</th>
				</tr>
			<?php $sum = 0; ?>
			@foreach($cartProdcuts as $cartProdcuts)
				<tr>
					<td>{{$cartProdcuts->id}}</td>
					<td>{{$cartProdcuts->name}}</td>
					<td>TK. {{$cartProdcuts->price}}</td>
					<td>
						<form action="{{ url('/update-cart') }}" method="post" class="">
							{{ csrf_field() }}
							<div class="input-group">
								<input type="number" min="1" class="form-control"  value="{{$cartProdcuts->qty}}" name="product_quantity"/>
								<input type="hidden" value="{{ $cartProdcuts->rowId }}" name="rowId">
								<span class="input-group-btn">
									<button type="submit" class="btn btn-primary">
										<span class="glyphicon glyphicon-upload"></span>
									</button>
								</span>
							</div>
						</form>
					</td>
					<td>TK. {{$cartProdcuts->subtotal}}</td>
					<td>
						<a href="{{ url('/remove-cart-product/'.$cartProdcuts->rowId) }}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure to delete this!')">
							<span class="glyphicon glyphicon-trash"></span>
						</a>
					</td>
					
				</tr>
				<?php $sum= $sum+$cartProdcuts->subtotal; ?>
				@endforeach
			</table>
		</div>
	</div>
</div>

<hr/>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<div class="col-sm-4 col-sm-offset-8">
				<div class="well">
					<table class="table table-bordered">
						<tr>
							<th>Total Price</th>
							<td>BDT. {{ $sum }}</td>
							{{ Session::put('orderTotal', $sum) }}
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<hr/>


<div class="container">
	<div class="row">
		<div class="col-md-12">
			<?php  
				$customer_id = Session::get('customer_id');
				$shipping_id = Session::get('shipping_id');
				if ($customer_id != null && $customer_id != null) { ?>
					<a href="{{ url('/payment-info') }}" class="btn btn-success pull-right">Checkout</a>
				<?php } else if ($customer_id != null && $customer_id == null){ ?>
					<a href="{{ url('/shipping-info') }}" class="btn btn-success pull-right">Checkout</a>
				<?php  }else{ ?>
					<a href="{{ url('/checkout') }}" class="btn btn-success pull-right">Checkout</a>

				<?php  } ?>

		
			<a href="{{ url('/') }}" class="btn btn-success">Continue Shopping</a>
		</div>
	</div>
</div>

<hr/>

@endsection