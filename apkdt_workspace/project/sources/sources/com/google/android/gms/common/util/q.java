package com.google.android.gms.common.util;

import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class q {

    /* renamed from: a, reason: collision with root package name */
    private static String f5426a;

    /* renamed from: b, reason: collision with root package name */
    private static int f5427b;

    @KeepForSdk
    @Nullable
    public static String a() {
        if (f5426a == null) {
            if (f5427b == 0) {
                f5427b = Process.myPid();
            }
            f5426a = a(f5427b);
        }
        return f5426a;
    }

    @Nullable
    private static String a(int i2) {
        BufferedReader bufferedReader;
        BufferedReader bufferedReader2 = null;
        String str = null;
        if (i2 <= 0) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder(25);
            sb.append("/proc/");
            sb.append(i2);
            sb.append("/cmdline");
            bufferedReader = a(sb.toString());
        } catch (IOException unused) {
            bufferedReader = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            str = bufferedReader.readLine().trim();
            k.a(bufferedReader);
        } catch (IOException unused2) {
            k.a(bufferedReader);
            return str;
        } catch (Throwable th2) {
            bufferedReader2 = bufferedReader;
            th = th2;
            k.a(bufferedReader2);
            throw th;
        }
        return str;
    }

    private static BufferedReader a(String str) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return new BufferedReader(new FileReader(str));
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }
}
