@extends('index')
@section('content')
<section class="main-section">
        <!-- Add Your Content Inside -->
        <div class="content">
                <h1>Tambah Mahasiswa</h1>

                <form action="{{ route('mahasiswa.store') }}" method="post">
                        {{ csrf_field() }}
                        <div class="form-group">
                                <label for="nama">NIM</label>
                                <input type="text" class="form-control" name="nim">
                        </div>
                        <div class="form-group">
                                <label for="nama">Nama</label>
                                <input type="text" class="form-control" name="nama">
                        </div>
                        <div class="form-group">
                                <label for="nama">Jenis Kelamin</label>
                                <input type="text" class="form-control" name="jk">
                        </div>
                        <div class="form-group">
                                <label for="nama">Alamat</label>
                                <input type="text" class="form-control" name="alamat">
                        </div>
                        <div class="form-group">
                                <label for="nama">Email</label>
                                <input type="text" class="form-control" name="email">
                        </div>
                        <div class="form-group">
                                <label for="nama">No HP</label>
                                <input type="text" class="form-control" name="nohp">
                        </div>
                        <div class="form-group">
                                <button type="submit" class="btn btn-md btn-primary">Simpan</button>
                                <button type="reset" class="btn btn-md btn-danger"> Batal</button>
                        </div>
                </form>
        </div>
</section>
@endsection