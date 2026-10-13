package com.alipay.mobile.security.bio.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.StatFs;
import java.io.File;
import java.io.FileFilter;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class DeviceUtil {
    public static long getAvailableStorageSize(File file) {
        try {
            StatFs statFs = new StatFs(file.getPath());
            return statFs.getAvailableBlocks() * statFs.getBlockSize();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003d, code lost:
    
        if (r0 == null) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long getMemorySize() {
        /*
            java.lang.String r0 = "/proc/meminfo"
            r1 = 0
            r2 = 0
            java.io.FileReader r4 = new java.io.FileReader     // Catch: java.lang.Throwable -> L34
            r4.<init>(r0)     // Catch: java.lang.Throwable -> L34
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L32
            r5 = 8192(0x2000, float:1.148E-41)
            r0.<init>(r4, r5)     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L30
            if (r1 == 0) goto L29
            java.lang.String r5 = "\\s+"
            java.lang.String[] r1 = r1.split(r5)     // Catch: java.lang.Throwable -> L30
            r5 = 1
            r1 = r1[r5]     // Catch: java.lang.Throwable -> L30
            long r1 = java.lang.Long.parseLong(r1)     // Catch: java.lang.Throwable -> L30
            r5 = 1024(0x400, double:5.06E-321)
            long r1 = r1 * r5
            r2 = r1
        L29:
            r4.close()     // Catch: java.lang.Throwable -> L2c
        L2c:
            r0.close()     // Catch: java.lang.Throwable -> L40
            goto L40
        L30:
            goto L36
        L32:
            r0 = r1
            goto L36
        L34:
            r0 = r1
            r4 = r0
        L36:
            if (r4 == 0) goto L3d
            r4.close()     // Catch: java.lang.Throwable -> L3c
            goto L3d
        L3c:
        L3d:
            if (r0 == 0) goto L40
            goto L2c
        L40:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.mobile.security.bio.utils.DeviceUtil.getMemorySize():long");
    }

    public static int getProcessorNum() {
        try {
            return new File("/sys/devices/system/cpu/").listFiles(new FileFilter() { // from class: com.alipay.mobile.security.bio.utils.DeviceUtil.1CpuFilter
                @Override // java.io.FileFilter
                public boolean accept(File file) {
                    return Pattern.matches("cpu[0-9]+", file.getName());
                }
            }).length;
        } catch (Throwable unused) {
            return 0;
        }
    }

    public static long getTotalStorageSize(File file) {
        try {
            StatFs statFs = new StatFs(file.getPath());
            return statFs.getBlockCount() * statFs.getBlockSize();
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String getUtdid(Context context) {
        String str;
        try {
            str = (String) Class.forName("com.ut.device.UTDevice").getMethod("getUtdid", Context.class).invoke(null, context);
        } catch (Exception unused) {
            str = "";
        }
        String str2 = "[*] UTDID:" + str;
        return str;
    }

    public static String getVersionName(Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return "";
        }
    }

    public static boolean isDebug(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo(context.getPackageName(), 16384).flags & 2) != 0;
        } catch (Throwable unused) {
            return false;
        }
    }
}
