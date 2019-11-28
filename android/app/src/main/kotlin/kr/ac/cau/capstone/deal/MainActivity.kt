package kr.ac.cau.capstone.deal

import android.content.Intent
import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import android.content.Intent.ACTION_VIEW
import android.content.Intent.URI_INTENT_SCHEME
import android.content.Intent.parseUri
import android.net.Uri
import android.util.Log.println
import io.flutter.Log
import kotlin.io.println as println1


class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    var CHANNEL = "kr.ac.cau.capstone.deal.android"

    GeneratedPluginRegistrant.registerWith(this)
    MethodChannel(flutterView, CHANNEL).setMethodCallHandler { call, result ->
      // Note: this method is invoked on the main thread.

      if (call.method == "launchIntent") {
        val intent = parseUri(call.argument("url"), URI_INTENT_SCHEME)
        val existPackage = packageManager.getLaunchIntentForPackage(""+intent.getPackage())
        Log.d("flutter", call.toString())
        if (existPackage != null) {
          startActivity(intent)
        } else {
          val marketIntent = Intent(ACTION_VIEW)
          marketIntent.data = Uri.parse("market://details?id=" + intent.getPackage())
          startActivity(marketIntent)
        }
        result.success(intent.dataString)
      } else {
        result.notImplemented()
      }
    }

  }
}
