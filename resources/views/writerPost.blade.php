<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Writer's Post</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body style="font-family: sans-serif;">
    @include('components.navbar')
    <div class="container mb-5 mt-5 d-flex justify-content-start">
        <div>
            <img class="img-fluid" src="{{asset('images/writer1.png')}}" alt="" style="height: 5rem;">
        </div>
        <div class="d-flex flex-column justify-content-center">
            <p class="m-0" style="font-weight: bold;">
                {{$data[0]->author}}
            </p>
            <p class="m-0">
                {{$data[0]->category}} specialist
            </p>
        </div>
    </div>

    <?php foreach($data as $element): ?>
        @include('components.articleTumbnail',$element);
    <?php endforeach;?>

    @include('components.footer')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>