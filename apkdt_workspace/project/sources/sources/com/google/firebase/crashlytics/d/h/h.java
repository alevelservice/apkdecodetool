package com.google.firebase.crashlytics.d.h;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;

/* compiled from: CommonUtils.java */
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final char[] f14422a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: b, reason: collision with root package name */
    private static long f14423b = -1;

    /* renamed from: c, reason: collision with root package name */
    public static final Comparator<File> f14424c = new a();

    /* compiled from: CommonUtils.java */
    /* loaded from: classes.dex */
    class a implements Comparator<File> {
        a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    }

    /* compiled from: CommonUtils.java */
    /* loaded from: classes.dex */
    enum b {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;


        /* renamed from: e, reason: collision with root package name */
        private static final Map<String, b> f14425e = new HashMap(4);

        static {
            f14425e.put("armeabi-v7a", ARMV7);
            f14425e.put("armeabi", ARMV6);
            f14425e.put("arm64-v8a", ARM64);
            f14425e.put("x86", X86_32);
        }

        static b getValue() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                com.google.firebase.crashlytics.d.b.a().a("Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            b bVar = f14425e.get(str.toLowerCase(Locale.US));
            return bVar == null ? UNKNOWN : bVar;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0035, code lost:
    
        r2 = r3[1];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(java.io.File r6, java.lang.String r7) {
        /*
            java.lang.String r0 = "Failed to close system file reader."
            boolean r1 = r6.exists()
            r2 = 0
            if (r1 == 0) goto L5f
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f
            java.io.FileReader r3 = new java.io.FileReader     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f
            r3.<init>(r6)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f
            r4 = 1024(0x400, float:1.435E-42)
            r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> L3c java.lang.Exception -> L3f
        L15:
            java.lang.String r3 = r1.readLine()     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L5a
            if (r3 == 0) goto L36
            java.lang.String r4 = "\\s*:\\s*"
            java.util.regex.Pattern r4 = java.util.regex.Pattern.compile(r4)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L5a
            r5 = 2
            java.lang.String[] r3 = r4.split(r3, r5)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L5a
            int r4 = r3.length     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L5a
            r5 = 1
            if (r4 <= r5) goto L15
            r4 = 0
            r4 = r3[r4]     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L5a
            boolean r4 = r4.equals(r7)     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L5a
            if (r4 == 0) goto L15
            r6 = r3[r5]     // Catch: java.lang.Exception -> L3a java.lang.Throwable -> L5a
            r2 = r6
        L36:
            a(r1, r0)
            goto L5f
        L3a:
            r7 = move-exception
            goto L41
        L3c:
            r6 = move-exception
            r1 = r2
            goto L5b
        L3f:
            r7 = move-exception
            r1 = r2
        L41:
            com.google.firebase.crashlytics.d.b r3 = com.google.firebase.crashlytics.d.b.a()     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5a
            r4.<init>()     // Catch: java.lang.Throwable -> L5a
            java.lang.String r5 = "Error parsing "
            r4.append(r5)     // Catch: java.lang.Throwable -> L5a
            r4.append(r6)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r6 = r4.toString()     // Catch: java.lang.Throwable -> L5a
            r3.b(r6, r7)     // Catch: java.lang.Throwable -> L5a
            goto L36
        L5a:
            r6 = move-exception
        L5b:
            a(r1, r0)
            throw r6
        L5f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.crashlytics.d.h.h.a(java.io.File, java.lang.String):java.lang.String");
    }

    public static synchronized long b() {
        long j2;
        synchronized (h.class) {
            if (f14423b == -1) {
                long j3 = 0;
                String a2 = a(new File("/proc/meminfo"), "MemTotal");
                if (!TextUtils.isEmpty(a2)) {
                    String upperCase = a2.toUpperCase(Locale.US);
                    try {
                        if (upperCase.endsWith("KB")) {
                            j3 = a(upperCase, "KB", 1024);
                        } else if (upperCase.endsWith("MB")) {
                            j3 = a(upperCase, "MB", 1048576);
                        } else if (upperCase.endsWith("GB")) {
                            j3 = a(upperCase, "GB", 1073741824);
                        } else {
                            com.google.firebase.crashlytics.d.b.a().a("Unexpected meminfo format while computing RAM: " + upperCase);
                        }
                    } catch (NumberFormatException e2) {
                        com.google.firebase.crashlytics.d.b.a().b("Unexpected meminfo format while computing RAM: " + upperCase, e2);
                    }
                }
                f14423b = j3;
            }
            j2 = f14423b;
        }
        return j2;
    }

    public static String c(String str) {
        return a(str, "SHA-1");
    }

    public static SharedPreferences d(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    public static String e(Context context) {
        int a2 = a(context, "com.google.firebase.crashlytics.mapping_file_id", "string");
        if (a2 == 0) {
            a2 = a(context, "com.crashlytics.android.build_id", "string");
        }
        if (a2 != 0) {
            return context.getResources().getString(a2);
        }
        return null;
    }

    public static boolean f(Context context) {
        return (j(context) || ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) == null) ? false : true;
    }

    public static String g(Context context) {
        int i2 = context.getApplicationContext().getApplicationInfo().icon;
        if (i2 > 0) {
            try {
                String resourcePackageName = context.getResources().getResourcePackageName(i2);
                return "android".equals(resourcePackageName) ? context.getPackageName() : resourcePackageName;
            } catch (Resources.NotFoundException unused) {
                return context.getPackageName();
            }
        }
        return context.getPackageName();
    }

    public static SharedPreferences h(Context context) {
        return context.getSharedPreferences("com.google.firebase.crashlytics", 0);
    }

    public static boolean i(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static boolean j(Context context) {
        return "sdk".equals(Build.PRODUCT) || "google_sdk".equals(Build.PRODUCT) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    public static boolean k(Context context) {
        boolean j2 = j(context);
        String str = Build.TAGS;
        if ((j2 || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !j2 && new File("/system/xbin/su").exists();
        }
        return true;
    }

    public static String l(Context context) {
        int a2 = a(context, "com.google.firebase.crashlytics.unity_version", "string");
        if (a2 == 0) {
            return null;
        }
        String string = context.getResources().getString(a2);
        com.google.firebase.crashlytics.d.b.a().a("Unity Editor version is: " + string);
        return string;
    }

    public static boolean c() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    public static int c(Context context) {
        int i2 = j(context) ? 1 : 0;
        if (k(context)) {
            i2 |= 2;
        }
        return c() ? i2 | 4 : i2;
    }

    public static int a() {
        return b.getValue().ordinal();
    }

    static long a(String str, String str2, int i2) {
        return Long.parseLong(str.split(str2)[0].trim()) * i2;
    }

    public static ActivityManager.RunningAppProcessInfo a(String str, Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    return runningAppProcessInfo;
                }
            }
        }
        return null;
    }

    public static String b(Context context, String str) {
        int a2 = a(context, str, "string");
        return a2 > 0 ? context.getString(a2) : "";
    }

    public static boolean b(String str) {
        return str == null || str.length() == 0;
    }

    public static String a(InputStream inputStream) {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    @SuppressLint({"MissingPermission"})
    public static boolean b(Context context) {
        if (!a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    private static String a(String str, String str2) {
        return a(str.getBytes(), str2);
    }

    private static String a(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            com.google.firebase.crashlytics.d.b.a().b("Could not create hashing algorithm: " + str + ", returning empty string.", e2);
            return "";
        }
    }

    public static String a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            if (str != null) {
                arrayList.add(str.replace("-", "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            sb.append((String) it.next());
        }
        String sb2 = sb.toString();
        if (sb2.length() > 0) {
            return c(sb2);
        }
        return null;
    }

    public static long a(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static long a(String str) {
        long blockSize = new StatFs(str).getBlockSize();
        return (r0.getBlockCount() * blockSize) - (blockSize * r0.getAvailableBlocks());
    }

    public static boolean a(Context context, String str, boolean z) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int a2 = a(context, str, "bool");
            if (a2 > 0) {
                return resources.getBoolean(a2);
            }
            int a3 = a(context, str, "string");
            if (a3 > 0) {
                return Boolean.parseBoolean(context.getString(a3));
            }
        }
        return z;
    }

    public static int a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, g(context));
    }

    public static String a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = bArr[i2] & 255;
            int i4 = i2 * 2;
            char[] cArr2 = f14422a;
            cArr[i4] = cArr2[i3 >>> 4];
            cArr[i4 + 1] = cArr2[i3 & 15];
        }
        return new String(cArr);
    }

    public static void a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e2) {
                com.google.firebase.crashlytics.d.b.a().b(str, e2);
            }
        }
    }

    public static void a(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (IOException e2) {
                com.google.firebase.crashlytics.d.b.a().b(str, e2);
            }
        }
    }

    public static String a(int i2) {
        if (i2 >= 0) {
            return String.format(Locale.US, "%1$10s", Integer.valueOf(i2)).replace(' ', '0');
        }
        throw new IllegalArgumentException("value must be zero or greater");
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static boolean a(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }
}
