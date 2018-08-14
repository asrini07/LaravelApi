<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mmahasiswa; 
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Validator;

class MahasiswaController extends Controller
{
    //
    public $successStatus = 200;

    public function index()
    {
        $user=Auth::user();
        $data=Mmahasiswa::all();
        $mahasiswa = $user->mmahasiswas;
        return response()->json([
            'success' => true,
            'data' => $data
        ]);
    }
    public function show($id){
        $data=Mmahasiswa::where('nim',$id)->get();
        if(!$data){
            return response()->json([
                'success' => false,
                'message' => 'mahasiswa with nim ' . $id . ' not found'
            ], 400);
        }else{
            return response()->json([
                'success' => true,
                'message' => $data
            ], 200);
        }
    }
    public function store(Request $request){
        $validator= Validator::make($request->all(),[
            'nim' => 'required',
            'nama' => 'required',
            'jk' => 'required',
            'alamat' => 'required',
            'email' => 'required|email',
            'nohp'=> 'required',
        ]);

        if($validator->fails()){
            return response()->json(['error'=>$validator->errors()], 401);
        }

        $data= new Mmahasiswa();
        $data->nim=$request->input('nim');
        $data->nama=$request->input('nama');
        $data->jk=$request->input('jk');
        $data->alamat=$request->input('alamat');
        $data->email=$request->input('email');
        $data->nohp=$request->input('nohp');

        if($data->save()){
            $res["message"]="Sukses";
            $res["value"]=$data;
            return response($res);

        } else{
            $res["message"]="Gagal";
            return response($res);
        }

    }

    public function update(Request $request, $id){
        $data=Mmahasiswa::where('nim',$id)->first(); 
        if (!$data) {
            return response()->json([
                'success' => false,
                'message' => 'Mahasiswa with nim ' . $id . ' not found'
            ], 400);
        } 
        $data->nim=$request->input('nim');
        $data->nama=$request->input('nama');
        $data->alamat=$request->input('alamat');
        $data->jk=$request->input('jk');
        $data->email=$request->input('email');
        $data->nohp=$request->input('nohp');
        if($data->save()){
            $res["message"]="Sukses";
            $res["value"]=$data;
            return response($res);
        } else{
            $res["message"]="Gagal";
            return response($res);
        }
    }

    public function destroy($id){
        $data=Mmahasiswa::where('nim',$id)->first();
        if (!$data) {
            return response()->json([
                'success' => false,
                'message' => 'Mahasiswa with nim ' . $id . ' not found'
            ], 400);
        }
 

        if($data->delete()){
            $res["message"]="sukses";
            $res["value"]=$data;
            return response($res);
        } else{
            $res["message"]="gagal";
            return response($res);
        }

    }


}
