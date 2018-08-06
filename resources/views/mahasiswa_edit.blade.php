@extends('index')
@section('content')
<section class="main-section">
        <!-- Add Your Content Inside -->
        <div class="content">
                <h1>Tambah Mahasiswa</h1>
                @foreach($data as $datas) 
                <form action="{{ route('mahasiswa.update', $datas->nim) }}" method="post">
                
                        {{ csrf_field() }}
                        {{ method_field('PUT') }}
                        <div class="form-group">
                                <label for="nama">NIM</label>
                                <input type="text" class="form-control" name="nim" value="{{ $datas->nim}}">
                        </div>
                        <div class="form-group">
                                <label for="nama">Nama</label>
                                <input type="text" class="form-control" name="nama" value="{{ $datas->nama }}">
                        </div>
                        <div class="form-group">
                                <label for="nama">Jenis Kelamin</label>
                                <input type="text" class="form-control" name="jk" value="{{ $datas->jk }}">
                        </div>
                        <div class="form-group">
                                <label for="nama">Alamat</label>
                                <input type="text" class="form-control" name="alamat" value="{{ $datas->alamat }}">
                        </div>
                        <div class="form-group">
                                <label for="nama">Email</label>
                                <input type="text" class="form-control" name="email" value="{{ $datas->email }}"> 
                        </div>
                        <div class="form-group">
                                <label for="nama">No HP</label>
                                <input type="text" class="form-control" name="nohp" value="{{ $datas->nohp }}">
                        </div>
                        <div class="form-group">
                                <button type="submit" class="btn btn-md btn-primary">Simpan</button>
                                <button type="reset" class="btn btn-md btn-danger"> Batal</button>
                        </div>
                </form>
                @endforeach
        </div>
</section>
@endsection