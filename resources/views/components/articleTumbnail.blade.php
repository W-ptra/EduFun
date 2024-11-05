<section class="container">
    <div class="row">
        <div class="col-4">
            <img class="img-fluid" src="{{ asset($element->image) }}" alt="">
        </div>
        <div class="col-8 d-flex flex-column">
            <div class="p-3">
                <span style="font-weight: bold;">{{ $element->title }}</span><br>
                <span>{{ $element->date }} by {{ $element->author }}</span>
            </div>
            <div class="p-3">
                <?php 
                    $cutString = substr( $element->content,0,200);
                    echo $cutString."..";
                ?>
                
            </div>
            <div class="p-4 d-flex justify-content-end">
                <a href="/post/{{ $element->id }}">
                    <button style="background-color: black; color: white; width: 15vw; height: 7vh; border-color: transparent; border-radius: 1vw;">
                        Read More
                    </button>
                </a>
            </div>
        </div>
    </div>
</section>