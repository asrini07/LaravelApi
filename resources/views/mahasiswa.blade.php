<!-- Main Section -->
@extends('index')
@section('content')
<section class="main-section">
        <!-- Add Your Content Inside -->
        <div class="content">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <td>No</td>
                        <td>NIM</td>
                        <td>Nama</td>
                        <td>Alamat</td>
                        <td>Aksi</td>
                    </tr>
                </thead>
                <tbody>
                    @php $no=1; @endphp
                    @foreach($data as $datas)
                    <tr>
                        <td>{{$no++}}</td>
                        <td>{{ $datas->nim }}</td>
                        <td>{{ $datas->nama }}</td>
                        <td>{{ $datas->alamat }}</td>
                        <td>
                            <form action="{{ route('mahasiswa.destroy', $datas->nim) }}" method="post">
                                {{ csrf_field() }}
                                {{ method_field('DELETE') }}
                                <a class="btn btn-sm btn-warning" href="{{ route('mahasiswa.edit', $datas->nim) }}">Edit</a>
                                <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Yakin ingin menghapus?')">Hapus</button>
                            </form>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
        <!-- /.content -->
</section>
    <!-- /.main-section -->
@endsection