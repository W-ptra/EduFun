<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Popular</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body style="font-family: sans-serif;">

    @include('components.navbar')

    <div class="container mb-5 mt-5">
        <h1 style="font-weight: bold;">Popular</h1>
    </div>

    <?php foreach($data as $element): ?>
        @include('components.articleTumbnail',$element);
    <?php endforeach;?>

    <p class="container d-flex justify-content-center">
        <span>Page|</span>
        <?php for($i=1;$i<=$totalPages;$i++):?>
            @if ($i == $currentPage)
                <a href="/popular/{{$i}}" style="color:black;font-style: inherit; text-decoration: none;">
                    <span style="font-weight: bold;" >{{$i}}</span>
                </a>
            @else
                <a href="/popular/{{$i}}" style="color:black;font-style: inherit; text-decoration: none;">
                    <span>{{$i}}</span>
                </a>
            @endif
        <?php endfor;?>
    </p>

    @include('components.footer')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>