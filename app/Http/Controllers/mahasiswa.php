<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mmahasiswa; 
use Illuminate\Database\Eloquent\Model;

class mahasiswa extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


    public function index()
    {
        //LARAVEL API
        $data=Mmahasiswa::all();

        if(count($data) > 0){
            $res["message"]="Sukses!";
            $res["values"] = $data;
            return response($res);
        } else{
            $res["message"]="Empty Data";
            return response($res);
        }


        // LARAVEL CRUD
        //$data=Mmahasiswa::all();
        //return view('mahasiswa',compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('mahasiswa_create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //LARAVEL API
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


        //laravel CRUD
        //$data = new Mmahasiswa();
        //$data->nim=$request->nim;
        //$data->nama=$request->nama;
        //$data->alamat=$request->alamat;
        //$data->jk=$request->jk;
        //$data->email=$request->email;
        //$data->nohp=$request->nohp;
        //$data->save();
        //return redirect()->route('mahasiswa.index')->with('alert-success','Berhasil Menambahkan Data');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //LARAVEL API
        $data=Mmahasiswa::where('nim',$id)->get();
        if(count($data) > 0) {
            $res["message"]="Sukses";
            $res["values"]=$data;
            return response($res);
        } else{
            $res["message"]="Failed Data";
            return response($res);
        }
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $data=Mmahasiswa::where('nim',$id)->get();
        return view('mahasiswa_edit',compact('data')); 
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //LARAVEL API
        $data=Mmahasiswa::where('nim',$id)->first();
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
        
        
        //LARAVEL CRUD
        //$data=Mmahasiswa::where('nim',$id)->first();
        //$data->nim=$request->nim;
        //$data->nama=$request->nama;
        //$data->alamat=$request->alamat;
        //$data->jk=$request->jk;
        //$data->email=$request->email;
        //$data->nohp=$request->nohp;
        //$data->save();
        //return redirect()->route('mahasiswa.index')->with('alert-success','Data berhasil diubah');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //LARAVEL API
        $data=Mmahasiswa::where('nim',$id)->first();
        if($data->delete()){
            $res["message"]="sukses";
            $res["value"]=$data;
            return response($res);
        } else{
            $res["message"]="gagal";
            return response($res);
        }

        //LARAVEL CRUD
        //$data=Mmahasiswa::where('nim',$id)->first();
        //$data->delete();
        //return redirect()->route('mahasiswa.index')->with('alert-success','Data berhasil dihapus');
    }
}
