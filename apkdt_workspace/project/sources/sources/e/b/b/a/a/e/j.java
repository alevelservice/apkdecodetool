package e.b.b.a.a.e;

import android.os.Environment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Calendar;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPOutputStream;

/* compiled from: LoggingUtil.java */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public static String f17064a = "_";

    /* renamed from: b, reason: collision with root package name */
    private static boolean f17065b = false;

    public static File a() {
        File file;
        try {
            file = new File(Environment.getExternalStorageDirectory(), "iapLog");
        } catch (Throwable th) {
            String str = "getCommonExternalStorageDir: " + th;
            file = new File("/sdcard/iapLog");
        }
        try {
            if (file.exists()) {
                if (file.isFile()) {
                    g.b(file);
                    file.mkdirs();
                }
            } else {
                file.mkdirs();
            }
        } catch (Throwable unused) {
        }
        return file;
    }

    public static byte[] b(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return a(bytes, 0, bytes.length);
        } catch (Throwable th) {
            throw new IllegalStateException(th);
        }
    }

    public static String c() {
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        StringBuilder sb = new StringBuilder();
        int i2 = calendar.get(1);
        int i3 = calendar.get(2) + 1;
        int i4 = calendar.get(5);
        int i5 = calendar.get(11);
        int i6 = calendar.get(12);
        int i7 = calendar.get(13);
        int i8 = calendar.get(14);
        sb.append(i2);
        sb.append('-');
        if (i3 < 10) {
            sb.append('0');
        }
        sb.append(i3);
        sb.append('-');
        if (i4 < 10) {
            sb.append('0');
        }
        sb.append(i4);
        sb.append(' ');
        if (i5 < 10) {
            sb.append('0');
        }
        sb.append(i5);
        sb.append(':');
        if (i6 < 10) {
            sb.append('0');
        }
        sb.append(i6);
        sb.append(':');
        if (i7 < 10) {
            sb.append('0');
        }
        sb.append(i7);
        sb.append(':');
        if (i8 < 100) {
            sb.append('0');
        }
        if (i8 < 10) {
            sb.append('0');
        }
        sb.append(i8);
        return sb.toString();
    }

    public static String d(String str) {
        if (str == null || !str.contains(f17064a)) {
            return null;
        }
        return str.split(f17064a)[0];
    }

    public static String d() {
        DisplayMetrics displayMetrics = e.b.b.a.a.d.i.a().a().getResources().getDisplayMetrics();
        return displayMetrics.widthPixels + "*" + displayMetrics.heightPixels;
    }

    public static boolean b() {
        return f17065b;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File a(android.content.Context r3, java.lang.String r4) {
        /*
            boolean r0 = e.b.b.a.a.e.j.f17065b
            if (r0 == 0) goto L1d
            boolean r0 = e.b.b.a.a.e.g.a()
            if (r0 == 0) goto L1d
            java.io.File r0 = a()     // Catch: java.lang.Throwable -> L1d
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L1d
            java.lang.String r2 = r3.getPackageName()     // Catch: java.lang.Throwable -> L1d
            r1.<init>(r0, r2)     // Catch: java.lang.Throwable -> L1d
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L1d
            r0.<init>(r1, r4)     // Catch: java.lang.Throwable -> L1d
            goto L1e
        L1d:
            r0 = 0
        L1e:
            if (r0 != 0) goto L2c
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L2b
            java.io.File r3 = r3.getFilesDir()     // Catch: java.lang.Throwable -> L2b
            r1.<init>(r3, r4)     // Catch: java.lang.Throwable -> L2b
            r0 = r1
            goto L2c
        L2b:
        L2c:
            if (r0 == 0) goto L37
            boolean r3 = r0.exists()
            if (r3 != 0) goto L37
            r0.mkdirs()
        L37:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: e.b.b.a.a.e.j.a(android.content.Context, java.lang.String):java.io.File");
    }

    public static byte[] a(byte[] bArr, int i2, int i3) {
        GZIPOutputStream gZIPOutputStream;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr, i2, i3);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    gZIPOutputStream.close();
                } catch (Throwable unused) {
                }
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable unused2) {
                }
                return byteArray;
            } catch (Throwable th) {
                th = th;
                try {
                    throw new IllegalStateException(th);
                } finally {
                }
            }
        } catch (Throwable th2) {
            th = th2;
            gZIPOutputStream = null;
        }
    }

    public static String c(String str) {
        return !TextUtils.isEmpty(str) ? str.replace("\r\n", "###").replace("\n", "###").replace("\r", "###") : str;
    }

    public static String a(String str) {
        return System.currentTimeMillis() + "_" + str;
    }

    public static StringBuilder a(StringBuilder sb, String str) {
        if (sb == null) {
            return null;
        }
        sb.append(',');
        if (str != null) {
            sb.append(str.replace(',', ' '));
        }
        return sb;
    }

    public static StringBuilder a(StringBuilder sb, Map<String, String> map) {
        if (sb == null) {
            return null;
        }
        sb.append(',');
        if (map != null && map.size() != 0) {
            boolean z = true;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (value == null) {
                    value = "";
                }
                if (key != null && value != null) {
                    String c2 = c(value);
                    if (z) {
                        z = false;
                    } else {
                        sb.append('^');
                    }
                    sb.append(key.replace(',', ' ').replace('^', ' ').replace('=', ' '));
                    sb.append('=');
                    sb.append(c2.replace(',', ' ').replace('^', ' '));
                }
            }
        }
        return sb;
    }

    public static String a(Throwable th) {
        String stackTraceString = Log.getStackTraceString(th);
        if (stackTraceString != null) {
            return stackTraceString.replace("$$", "<2$>");
        }
        return null;
    }
}
