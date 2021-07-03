<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    /**
     *  Get slug name
     */
    protected function getSlug( $slug_data ){
        return str_replace(' ', '-', $slug_data );
    }

    /**
     *  Embeded Youtube and Video link 
     */
    //  protected function getEmbed( $link ){
    //     if( str_contains( $link, 'youtube') ){
    //         return str_replace('watch?v=','embed/', $link );
    //     }
    //     elseif( str_contains( $link, 'vimeo' )){
    //         return str_replace('vimeo.com/','player.vimeo.com/video/', $link );
    //     }
    //     else{
    //         return 'Invalid Video Link';
    //     }
    //  }    
     
     
    // /**
    //  * Embeded youtube and vimeo link
    //  */
    //  protected function getEmbed($link){

    //     if (str_contains($link, 'youtube')) {
    //         return str_replace('watch?v=', 'embed/', $link);
    //     } else if (str_contains($link, 'vimeo')) {
    //         return str_replace('vimeo.com', 'player.vimeo.com/video', $link);
    //     }else {
    //         return 'invalid video link' ;
    //     }

    // }
     
      //genereate video url youtube and vimeo link
    protected function getEmbed($request_url){
        //fix youtube and vimeo url
        $url = $request_url;
        if(strpos($url,'youtube')){
            $slice_url = explode('&', $url);
            return $video_url = str_replace('watch?v=', 'embed/', $slice_url[0]);
        }elseif (strpos($url, 'vimeo')){
            return $video_url = str_replace('vimeo.com', 'player.vimeo.com/video', $url);
        }
    }



}
