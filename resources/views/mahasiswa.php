<<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Latihan Mahasiswa</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
</head>
<body>
    <table border="1" >
        <tr>
            <td>No</td>
            <td>NIM</td>
            <td>Nama</td>
            <td>Alamat</td>
            <td>Aksi</td>
        </tr>

        @php $no=1; @endphp
        @foreach($data as $datas)
        <tr>
            <td>{{$no++}}</td>
            <td>{{ $datas->nim }}</td>
            <td>{{ $datas->nama }}</td>
            <td>{{ $datas->alamat }}</td>
            <td>
                <form action="{{ route('mahasiswa.destroy', $data->nim)}}" method="post">
                    {{ csrf_field() }}
                    {{ method_field('DELETE') }}
                    <a href="{{ route('mahasiswa.edit', $data->nim) }}">Edit</a>
                    <button type="submit" onclick="return confirm('Yakin ingin menghapus?')"></button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>
</body>
</html>