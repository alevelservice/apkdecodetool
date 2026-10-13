package com.facebook.imageutils;

import a.i.m.h;
import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Pair;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;

/* compiled from: BitmapUtil.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private static final h<ByteBuffer> f4149a = new h<>(12);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BitmapUtil.java */
    /* renamed from: com.facebook.imageutils.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class C0071a {

        /* renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f4150a = new int[Bitmap.Config.values().length];

        static {
            try {
                f4150a[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4150a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4150a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f4150a[Bitmap.Config.RGB_565.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f4150a[Bitmap.Config.RGBA_F16.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    @SuppressLint({"NewApi"})
    public static int a(@Nullable Bitmap bitmap) {
        if (bitmap == null) {
            return 0;
        }
        if (Build.VERSION.SDK_INT > 19) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
            }
        }
        if (Build.VERSION.SDK_INT >= 12) {
            return bitmap.getByteCount();
        }
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public static b b(InputStream inputStream) {
        com.facebook.common.internal.h.a(inputStream);
        ByteBuffer a2 = f4149a.a();
        if (a2 == null) {
            a2 = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = a2.array();
            BitmapFactory.decodeStream(inputStream, null, options);
            return new b(options.outWidth, options.outHeight, Build.VERSION.SDK_INT >= 26 ? options.outColorSpace : null);
        } finally {
            f4149a.a(a2);
        }
    }

    @Nullable
    public static Pair<Integer, Integer> a(InputStream inputStream) {
        com.facebook.common.internal.h.a(inputStream);
        ByteBuffer a2 = f4149a.a();
        if (a2 == null) {
            a2 = ByteBuffer.allocate(16384);
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        try {
            options.inTempStorage = a2.array();
            Pair<Integer, Integer> pair = null;
            BitmapFactory.decodeStream(inputStream, null, options);
            if (options.outWidth != -1 && options.outHeight != -1) {
                pair = new Pair<>(Integer.valueOf(options.outWidth), Integer.valueOf(options.outHeight));
            }
            return pair;
        } finally {
            f4149a.a(a2);
        }
    }

    public static int a(Bitmap.Config config) {
        int i2 = C0071a.f4150a[config.ordinal()];
        if (i2 == 1) {
            return 4;
        }
        if (i2 == 2) {
            return 1;
        }
        if (i2 == 3 || i2 == 4) {
            return 2;
        }
        if (i2 == 5) {
            return 8;
        }
        throw new UnsupportedOperationException("The provided Bitmap.Config is not supported");
    }

    public static int a(int i2, int i3, Bitmap.Config config) {
        return i2 * i3 * a(config);
    }
}
