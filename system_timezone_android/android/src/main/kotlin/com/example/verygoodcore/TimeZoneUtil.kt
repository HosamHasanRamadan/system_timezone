package com.example.verygoodcore

import android.os.Build
import androidx.annotation.Keep
import java.time.ZoneId
import java.util.TimeZone

@Keep
abstract class TimeZoneUtil {
    @Keep
    companion object{
         fun getLocalTimezone(): String {
            return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ZoneId.systemDefault().id
            } else {
                TimeZone.getDefault().id
            }
        }

        fun getAvailableTimezones(): List<String> {
            return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                ZoneId.getAvailableZoneIds().toCollection(ArrayList())
            } else {
                TimeZone.getAvailableIDs().toCollection(ArrayList())
            }
        }
    }
}