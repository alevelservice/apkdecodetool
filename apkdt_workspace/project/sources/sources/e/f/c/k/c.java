package e.f.c.k;

import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import javax.annotation.Nullable;

/* compiled from: WebpSupportStatus.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f17194a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public static b f17195b;

    /* renamed from: c, reason: collision with root package name */
    private static boolean f17196c;

    /* renamed from: d, reason: collision with root package name */
    private static final byte[] f17197d;

    /* renamed from: e, reason: collision with root package name */
    private static final byte[] f17198e;

    /* renamed from: f, reason: collision with root package name */
    private static final byte[] f17199f;

    /* renamed from: g, reason: collision with root package name */
    private static final byte[] f17200g;

    /* renamed from: h, reason: collision with root package name */
    private static final byte[] f17201h;

    static {
        f17194a = Build.VERSION.SDK_INT <= 17;
        int i2 = Build.VERSION.SDK_INT;
        a();
        f17195b = null;
        f17196c = false;
        f17197d = a("RIFF");
        f17198e = a("WEBP");
        f17199f = a("VP8 ");
        f17200g = a("VP8L");
        f17201h = a("VP8X");
    }

    private static byte[] a(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("ASCII not found!", e2);
        }
    }

    @Nullable
    public static b b() {
        if (f17196c) {
            return f17195b;
        }
        b bVar = null;
        try {
            bVar = (b) Class.forName("com.facebook.webpsupport.WebpBitmapFactoryImpl").newInstance();
        } catch (Throwable unused) {
        }
        f17196c = true;
        return bVar;
    }

    public static boolean c(byte[] bArr, int i2) {
        return a(bArr, i2 + 12, f17200g);
    }

    public static boolean d(byte[] bArr, int i2) {
        return a(bArr, i2 + 12, f17199f);
    }

    private static boolean a() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 17) {
            return false;
        }
        if (i2 == 17) {
            byte[] decode = Base64.decode("UklGRkoAAABXRUJQVlA4WAoAAAAQAAAAAAAAAAAAQUxQSAwAAAARBxAR/Q9ERP8DAABWUDggGAAAABQBAJ0BKgEAAQAAAP4AAA3AAP7mtQAAAA==", 0);
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(decode, 0, decode.length, options);
            if (options.outHeight != 1 || options.outWidth != 1) {
                return false;
            }
        }
        return true;
    }

    public static boolean b(byte[] bArr, int i2) {
        return a(bArr, i2 + 12, f17201h) && ((bArr[i2 + 20] & 16) == 16);
    }

    public static boolean b(byte[] bArr, int i2, int i3) {
        return i3 >= 20 && a(bArr, i2, f17197d) && a(bArr, i2 + 8, f17198e);
    }

    public static boolean a(byte[] bArr, int i2) {
        return a(bArr, i2 + 12, f17201h) && ((bArr[i2 + 20] & 2) == 2);
    }

    public static boolean a(byte[] bArr, int i2, int i3) {
        return i3 >= 21 && a(bArr, i2 + 12, f17201h);
    }

    private static boolean a(byte[] bArr, int i2, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i2 > bArr.length) {
            return false;
        }
        for (int i3 = 0; i3 < bArr2.length; i3++) {
            if (bArr[i3 + i2] != bArr2[i3]) {
                return false;
            }
        }
        return true;
    }
}
