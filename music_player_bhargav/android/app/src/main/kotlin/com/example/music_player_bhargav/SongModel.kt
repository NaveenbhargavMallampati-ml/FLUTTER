package com.example.music_player_bhargav

class SongModel {
    var title: String? = null
    var artist: String? = null
    var album : String? = null
    var albumart: String?= null
    var url:String?=null
    var albumid :Long = 0
    var duration:Long=0
    var trackid:Long = 0
    var myid :Long = 0

    constructor(id:Long, artist:String, title:String, album:String, duration:Long, albumId:Long, trackId:Long) {
        this.myid = id
        this.artist = artist
        this.title = title
        this.album = album
        this.duration = duration
        this.albumid = albumId
        this.url = getURI()
        this.albumart = getAlbumArt()
        this.trackid = trackId
    }
    constructor(id:Long, artist:String, title:String, album:String, duration:Long, uri:String, albumArt:String, trackId:Long){
        this.myid = id
        this.artist = artist
        this.title = title
        this.album = album
        this.duration = duration
        this.url = uri
        this.albumart = albumArt
        this.trackid = trackId
    }
    fun getmyId():Long
    {
        return myid
    }
    fun getURI():String?{
        return url
    }
    fun getAlbumArt():String?
    {
    	return albumart
    }

}
