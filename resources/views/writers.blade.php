<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body style="font-family: sans-serif;">

    @include('components.navbar')

    <header class="container mt-5 mb-5">
        <h1 style="font-weight: bold;">
            Our Writer:
        </h1>
    </header>

    <div class="container d-flex justify-content-evently align-items-center">
        <div class="row container d-flex justify-content-evently align-items-center" style="width: 100vw;">
            <?php for($i=0;$i<3;$i++):?>
                <div class="col-4 d-flex flex-column">
                    <div class="p-5">
                        <img src="{{ asset('images/writer1.png')}}" alt="" class="img-fluid">
                    </div>
                    <div class="p-2">
                        <p class="text-center" style="font-weight: bold;">Aditya Juanda Putra</p>
                    </div>
                    <div class="p-3">
                        <p class="text-center">Specialist Interactive Multimedia</p>
                    </div>
                </div>
            <?php endfor;?>
        </div>
    </div>

    @include('components.footer')
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>