package com.parentalcontrol.child.utils

import android.content.Context
import android.content.pm.ApplicationInfo
import android.os.Build

class DeviceInfoCollector(private val context: Context) {

    fun collectInstalledApps(): List<String> {
        return try {
            context.packageManager.getInstalledApplications(0)
                .map { it.packageName }
                .filter { !isSystemApp(it) }
        } catch (e: Exception) {
            emptyList()
        }
    }

    private fun isSystemApp(packageName: String): Boolean {
        return try {
            val appInfo = context.packageManager.getApplicationInfo(packageName, 0)
            appInfo.flags and ApplicationInfo.FLAG_SYSTEM != 0
        } catch (e: Exception) {
            false
        }
    }

    fun getDeviceInfo(): Map<String, Any> {
        return mapOf(
            "device" to Build.DEVICE,
            "model" to Build.MODEL,
            "manufacturer" to Build.MANUFACTURER,
            "android_version" to Build.VERSION.RELEASE,
            "installed_apps" to collectInstalledApps()
        )
    }
}
