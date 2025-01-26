/**
 * Created by obesitychow on 8/18/23
 */

package ai.realeliza.app

import android.app.Application
import android.content.Context

class RealElizaApplication: Application() {
    companion object {
        lateinit var applicationCtx: Context
    }

    override fun onCreate() {
        super.onCreate()
        applicationCtx = applicationContext
    }
}