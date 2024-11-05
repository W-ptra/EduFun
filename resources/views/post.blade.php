<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{$data[0]->title}}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body style="font-family: sans-serif;">
    @include('components.navbar')
    
    <div class="container">
        <h2 class="mt-5 mb-5" style="font-weight: bold;">{{ $data[0]->category }}</h2>    
    </div>

    <div class="container d-flex flex-column justify-content-center align-items-center mb-5 mt-5">
        <img src="{{ asset($data[0]->image) }}" alt="" style="width: 70vw; height: 50vh;" >
        <div class="container-fluid mb-4 mt-2">
            <p>{{ $data[0]->date }} | by {{$data[0]->author}}</p>
        </div>
        <div class="container-fluid">
            <p>{{ $data[0]->content }}</p>
        </div>
    </div>
    

    @include('components.footer')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>