<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Category;
use DB;





class CategoryController extends Controller
{





    public function index(){
    	return view('admin.category.addCategory');
    }



    public function saveCategory(Request $request){
    	Category::create($request->all());

    	return redirect('category/add')->with('message', 'Category Info Created Successfully');
    }


    

    public function manageCategory(){
    	

    	$categories =	Category::all();
		return view('admin.category.manageCategory', ['categories'=>$categories]);
    }

    

   //  public function unpublishedCategory(Request $request){

   //  		$categoryById = Category::find($request->category_id);	
			// $categoryById->publication_status = 0;
			// $categoryById->save();
			// return redirect('category/manage')->with('message', 'Category info Unpublished successfully');
	
   //  }
    

   //  public function publishedCategory(Request $request){

   //  		$categoryById = Category::find($request->category_id);	
			// $categoryById->publication_status = 1;
			// $categoryById->save();
			// return redirect('category/manage')->with('message', 'Category info Unpublished successfully');
	
   //  }


      public function unpublishedCategory($id){

            // ai kaj ta 2 babe kora jay


           $categoryById = Category::find($id);
           $categoryById->publication_status = 0;
           $categoryById->save();

            // DB::table('categories')->where('id', $id)->update(['publication_status' => 0] );
           return redirect('/category/manage')->with('message', 'Category Info Unpublished Successfully');
    }

    public function publishedCategory($id){
            $categoryById = Category::find($id);
            $categoryById->publication_status = 1;
            $categoryById->save();

            return redirect('/category/manage')->with('message', 'Category Info Published Successfully');
    }

    public function editCategory($id){

       $categoryById = Category::find($id);

       return view('admin.category.editCategory', ['categoryById'=> $categoryById]);
    }

    public function updateCategory(Request $request){

           $categoryid = $request->category_id;

        $category = Category::find($categoryid);

        $category->category_name         = $request->category_name;
        $category->category_description  = $request->category_description;
        $category->publication_status    = $request->publication_status;
        $category->save();

        return redirect('/category/manage')->with('message', 'Category Info update Successfully');
       
    }

    public function deleteCategory(Request $request){


        $category = Category::find($request->category_id);
        $category->delete();
        return redirect('/category/manage')->with('message', 'Category Info Deteted Successfully');
    }




}
