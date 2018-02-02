<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Manufacturer;


class ManufactureController extends Controller
{
    public function index(){
    	return view('admin.manufacture.addManufacture');
    }

    public function saveManufacture(Request $request){

    	$this->manufactureValidation($request);
		$this->createManufacture($request);

			return redirect('/manufacture/add')->with('message', 'Manufacturer info save successfully');
    }

    public function manageManufacture(){
    	$manufacturers = Manufacturer::all();
    	return view('admin.manufacture.manageManufacture',['manufacturers'=>$manufacturers]);
    }

     public function unpublishedManufacture(Request $request){
     	$manufacturerById =	Manufacturer::find($request->manufacturer_id);
     	$manufacturerById->publication_status = 0;
     	$manufacturerById->save();
     	return redirect('/manufacture/manage')->with('message', 'Manufacturer info save successfully');
     }

      public function publishedManufacture(Request $request){
     	$manufacturerById =	Manufacturer::find($request->manufacturer_id);
     	$manufacturerById->publication_status = 1;
     	$manufacturerById->save();
     	return redirect('/manufacture/manage')->with('message', 'Manufacturer info save successfully');
     }


     public function editManufacture(Request $request){
     	$manufacturerById = Manufacturer::find($request->manufacturer_id);

        return view('admin.manufacture.editManufacture', ['manufacturerById'=> $manufacturerById]);
     }


    public function updateManufacture(Request $request){
    	 $manufactureid = $request->manufac_id;

        $manufactur = Manufacturer::find($manufactureid);

        $manufactur->manufacturer_name         = $request->manufacturer_name;
        $manufactur->manufacturer_description  = $request->manufacturer_description;
        $manufactur->publication_status    	   = $request->publication_status;
        $manufactur->save();

        return redirect('/manufacture/manage')->with('message', 'Manufacture Info update Successfully');
    }

     public function deleteManufacture(Request $request){
     	 $manufacture = Manufacturer::find($request->manufacturer_id);
        $manufacture->delete();
        return redirect('/manufacture/manage')->with('message', 'Manufacture Info Deteted Successfully');
     }




private function createManufacture($request){

			$manufacturer = new Manufacturer();
			$manufacturer->manufacturer_name = $request->manufacturer_name;
			$manufacturer->manufacturer_description = $request->manufacturer_description;
			$manufacturer->publication_status = $request->publication_status;
			$manufacturer->save();
	}


private function manufactureValidation($request){
			$this->validate($request, [
					'manufacturer_name'=>'required|unique:manufacturers|max:20',
					'manufacturer_description'=>'required',
				]);
	}


	














}
