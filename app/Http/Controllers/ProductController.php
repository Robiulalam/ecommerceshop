<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use App\Manufacturer;
use Image;
use App\Product;
use DB;

class ProductController extends Controller
{
   public function index(){
   	$publishedCategories 	= Category::where('publication_status', 1)->get();
   	$publishedManufacturer	= Manufacturer::where('publication_status', 1)->get();
   	return view('admin.product.addProduct',['publishedCategories'=>$publishedCategories, 'publishedManufacturer'=>$publishedManufacturer]);
   }



   public function productFormValidation($request){

   			$this->validate($request, [
    		'product_name'=>'required|max:100',
    		'product_price'=>'required',
    		'product_quantity'=>'required',
    		'product_image'=>'required',

    	]);

   }


   public function productImageUpload($request){

   		$productImage = $request->file('product_image');
    	$fileExtension = $productImage->getClientOriginalExtension();
    	$uploadPath = 'product_images/';
    	$imageName= $request->product_name.'.'.$fileExtension;
    	$imageUrl = $uploadPath.$imageName;
    	Image::make($productImage)->resize(150, 150)->save($uploadPath.$imageName);
    	return $imageUrl;
   }

   public function saveProductBasicInfo($request, $imageUrl){
   		$product = new Product();
    	$product->product_name = $request->product_name;
    	$product->category_id = $request->category_id;
    	$product->manufacturer_id = $request->manufacturer_id;
    	$product->product_price = $request->product_price;
    	$product->product_quantity = $request->product_quantity;
    	$product->product_short_description = $request->product_short_description;
    	$product->category_long_description = $request->category_long_description;
    	$product->product_image = $imageUrl;
    	$product->publication_status = $request->publication_status;
    	$product->save();
   }
 

    public function saveProduct(Request $request){


    	

    			$this->productFormValidation($request);
    			$imageUrl = $this->productImageUpload($request);
    	
    			$this->saveProductBasicInfo($request, $imageUrl);


    	return redirect('product/add')->with('message', 'Product Info save Sucessfully');

    }


   	public function manageProduct(){

		$products = DB::table('products')
		->join('categories', 'products.category_id', '=', 'categories.id')
		->join('manufacturers', 'products.manufacturer_id', '=', 'manufacturers.id')
			->select('products.*','categories.category_name','manufacturers.manufacturer_name')
		->get();
		
		return view('admin.product.manageProduct', ['products'=>$products] );

	}

  public function unpublishedProduct(Request $request){
      $productById = Product::find($request->product_id);  
      $productById->publication_status = 0;
      $productById->save();
      return redirect('/product/manage')->with('message', 'Product info Unpublished successfully');
  }


  public function publishedProduct(Request $request){
      $productById = Product::find($request->product_id);  
      $productById->publication_status = 1;
      $productById->save();
      return redirect('/product/manage')->with('message', 'Product info published successfully');
  }

   public function editProduct(Request $request){
      $publishedCategories  = Category::where('publication_status', 1)->get();
      $publishedManufacturer  = Manufacturer::where('publication_status', 1)->get();
           $productById = Product::find($request->product_id);

            return view('admin.product.editProduct', ['productById'=> $productById,'publishedCategories'=> $publishedCategories,'publishedManufacturer'=> $publishedManufacturer]);
   }

   

 

    public function updateProduct(Request $request){
        


        $this->productFormValidation($request);
        $imageUrl = $this->productImageUpload($request);

        $productid = $request->product_id;
        $product = Product::find($productid);



        $product->product_name = $request->product_name;
        $product->category_id = $request->category_id;
        $product->manufacturer_id = $request->manufacturer_id;
        $product->product_price = $request->product_price;
        $product->product_quantity = $request->product_quantity;
        $product->product_short_description = $request->product_short_description;
        $product->category_long_description = $request->category_long_description;
        $product->product_image = $imageUrl;
        $product->publication_status = $request->publication_status;
        $product->save();
        return redirect('/product/manage')->with('message', 'Product Info update Successfully');
    }

    





	public function deleteProduct(Request $request){
		$productById = Product::find($request->product_id);
		unlink($productById->product_image);
		$productById->delete();
    	return redirect('/product/manage')->with('message', 'Product Info delete Sucessfully');
	}














}
