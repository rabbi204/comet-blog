@extends('comet.layouts.app')

@section('page-title', $single_post -> title)

@section('page-category')
    @foreach($single_post -> categories as $cat)
        @section('page-category',  $cat -> name )
    @endforeach
@endsection



@section('main-section')

    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-8">
            <article class="post-single">
              <div class="post-info">
                <h2><a href="#">{{ $single_post -> title }}</a></h2>
                <h6 class="upper"><span>By</span><a href="#">{{ $single_post -> user -> name }}</a><span class="dot"></span><span>{{ date('d F, Y', strtotime($single_post -> created_at)) }}</span><span class="dot"></span> @foreach( $single_post -> tags as $tag ) <a href="#" class="post-tag">{{ $tag -> name }}</a> @endforeach</h6>
              </div>
              <div class="post-media">

                @php
                    $featured = json_decode( $single_post -> featured )
                @endphp

              @if($featured -> post_type == 'Image' )
                  <img src="{{ URL::to('') }}/media/post/{{ $featured -> image }}" alt="">

                  @elseif($featured -> post_type == 'Gallery')
                      <div class="post-media">
                          <div data-options="{&quot;animation&quot;: &quot;slide&quot;, &quot;controlNav&quot;: true" class="flexslider nav-outside">
                              <ul class="slides">

                                  @foreach( $featured -> post_gallery as $gallery)
                                      <li class="" style="width: 100%; float: left; margin-right: -100%; position: relative; opacity: 0; display: block; z-index: 1;">
                                          <img src="{{ URL::to('') }}/media/post/{{ $gallery }}" alt="" draggable="true">
                                      </li>
                                  @endforeach
                              </ul>
                          </div>
                      </div>
                  @elseif ( $featured -> post_type == 'Video' )
                      <div class="post-media">
                          <div class="media-video">
                              <iframe src="{{ $featured -> post_video }}" frameborder="0"></iframe>
                          </div>
                      </div>
                  @elseif ( $featured -> post_type == 'Audio' )
                      <audio controls>
                          {{-- <source src="{{ $featured -> post_audio }}" type="audio/ogg"> --}}
                          <source src="{{ $featured -> post_audio }}" type="audio/mpeg">
                      </audio>
              @endif
              </div>
              <div class="post-body">
                    {!! htmlspecialchars_decode( $single_post -> content ) !!}
              </div>
            </article>
            <!-- end of article-->


            @if ( Session::has('success') )
                <p>Comment added successful</p>
            @endif



            <div id="comments">
              <h5 class="upper">3 Comments</h5>
              <ul class="comments-list">


                @foreach ( $single_post -> comments as  $comment)

                @if($comment -> comment_id == null )       
                <li>
                  <div class="comment">
                    <div class="comment-pic">
                      <img src="{{ URL::to('comet/images/team/1.jpg') }}" alt="" class="img-circle">
                    </div>
                    <div class="comment-text">
                      <h5 class="upper">{{ $comment ->user -> name }}</h5><span class="comment-date">Posted on {{ date('d F Y', strtotime( $comment -> created_at ) ) }} at {{ date('g:i', strtotime( $comment -> created_at ) ) }}</span>
                      <p> {{ $comment -> text  }} </p>

                      @guest
                          <p>For Reply please <a href="{{ route('admin.login') }}">login</a> First</p>
                      @else
                       <a class="post-reply-btn" c_id="{{ $comment -> id }}" href="#" class="comment-reply">Reply</a>

                        <div class="reply-box reply-box-{{ $comment -> id }}">
                          <form action="{{ route('blog.post.reply') }}" class="comment-form" method="POST">
                            @csrf
                            <div class="form-group">
                                <input name="post_id" type="hidden" value="{{ $single_post -> id }}">
                                <input name="comment_id" type="hidden" value="{{ $comment -> id }}">
                                <textarea name="reply_text" placeholder="reply.." class="form-control"></textarea>
                            </div>
                            <div class="form-submit text-right">
                                <button type="submit" class="btn btn-color-out">Reply</button>
                            </div>
                        </form>
                        </div>
                      @endguest
                    </div>
                  </div>

                    @php

                      $reply = App\Models\Comment::where('comment_id','!=',null) -> where( 'comment_id', $comment -> id ) -> latest() -> get();

                    @endphp

                    @foreach ($reply as $reply_data )
                        
                    <ul class="children">
                        <li>
                        <div class="comment">
                            <div class="comment-pic">
                            <img src="{{ URL::to("comet/images/team/2.jpg") }}" alt="" class="img-circle">
                            </div>
                            <div class="comment-text">
                            <h5 class="upper">{{ $reply_data -> user -> name }}</h5><span class="comment-date">Posted on {{ date('d F Y', strtotime( $reply_data -> created_at ) ) }} at {{ date('i:g', strtotime( $comment -> created_at ) )  }}</span>
                            <p>{{ $reply_data -> text }}</p>
                            </div>
                        </div>
                        </li>
                    </ul>
                    @endforeach

                </li>

              @endif

             @endforeach
          </ul>
        </div>
            <!-- end of comments-->



                @guest
                    <p>Please <a href="{{ route('admin.login') }}">Login</a> first before place a comment</p>
                @else
                <div id="respond">
                    <h5 class="upper">Leave a comment</h5>
                    <div class="comment-respond">
                        <form action="{{ route('blog.post.comment') }}" class="comment-form" method="POST">
                            @csrf
                            <div class="form-group">
                                <input name="post_id" type="hidden" value="{{ $single_post -> id }}">
                                <textarea name="comments" placeholder="Comment" class="form-control"></textarea>
                            </div>
                            <div class="form-submit text-right">
                                <button type="submit" class="btn btn-color-out">Post Comment</button>
                            </div>
                        </form>
                    </div>
                </div>
                @endguest

            <!-- end of comment form-->
          </div>


            {{--  {{ sidebar }}--}}

           @include('comet.layouts.partials.sidebar')

        </div>
        <!-- end of row-->

      </div>
    </section>

@endsection
