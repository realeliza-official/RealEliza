/**
 * Created by obesitychow on 8/20/23
 */

package ai.realeliza.app.network

import ai.realeliza.app.model.CharacterResponse
import io.reactivex.Observable
import retrofit2.http.GET

interface CharacterApi {
    @GET("characters")
    fun getCharacters(): Observable<CharacterResponse?>
}