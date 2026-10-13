package com.facebook.imagepipeline.platform;

import a.i.m.h;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import com.facebook.common.internal.VisibleForTesting;
import java.io.InputStream;
import java.nio.ByteBuffer;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: DefaultDecoder.java */
@ThreadSafe
@TargetApi(21)
/* loaded from: classes.dex */
public abstract class b implements f {

    /* renamed from: d, reason: collision with root package name */
    private static final Class<?> f3890d = b.class;

    /* renamed from: e, reason: collision with root package name */
    private static final byte[] f3891e = {-1, -39};

    /* renamed from: a, reason: collision with root package name */
    private final com.facebook.imagepipeline.memory.d f3892a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final PreverificationHelper f3893b;

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    final h<ByteBuffer> f3894c;

    public b(com.facebook.imagepipeline.memory.d dVar, int i2, h hVar) {
        this.f3893b = Build.VERSION.SDK_INT >= 26 ? new PreverificationHelper() : null;
        this.f3892a = dVar;
        this.f3894c = hVar;
        for (int i3 = 0; i3 < i2; i3++) {
            this.f3894c.a(ByteBuffer.allocate(16384));
        }
    }

    public abstract int a(int i2, int i3, BitmapFactory.Options options);

    @Override // com.facebook.imagepipeline.platform.f
    public e.f.c.g.a<Bitmap> a(e.f.i.g.e eVar, Bitmap.Config config, @Nullable Rect rect, int i2) {
        return a(eVar, config, rect, i2, false);
    }

    @Override // com.facebook.imagepipeline.platform.f
    public e.f.c.g.a<Bitmap> a(e.f.i.g.e eVar, Bitmap.Config config, @Nullable Rect rect, boolean z) {
        BitmapFactory.Options a2 = a(eVar, config);
        boolean z2 = a2.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return a(eVar.q(), a2, rect, z);
        } catch (RuntimeException e2) {
            if (z2) {
                return a(eVar, Bitmap.Config.ARGB_8888, rect, z);
            }
            throw e2;
        }
    }

    @Override // com.facebook.imagepipeline.platform.f
    public e.f.c.g.a<Bitmap> a(e.f.i.g.e eVar, Bitmap.Config config, @Nullable Rect rect, int i2, boolean z) {
        boolean d2 = eVar.d(i2);
        BitmapFactory.Options a2 = a(eVar, config);
        InputStream q = eVar.q();
        com.facebook.common.internal.h.a(q);
        if (eVar.t() > i2) {
            q = new e.f.c.i.a(q, i2);
        }
        InputStream bVar = !d2 ? new e.f.c.i.b(q, f3891e) : q;
        boolean z2 = a2.inPreferredConfig != Bitmap.Config.ARGB_8888;
        try {
            return a(bVar, a2, rect, z);
        } catch (RuntimeException e2) {
            if (z2) {
                return a(eVar, Bitmap.Config.ARGB_8888, rect, i2, z);
            }
            throw e2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00a9 A[Catch: all -> 0x00cc, RuntimeException -> 0x00ce, IllegalArgumentException -> 0x00d7, TRY_LEAVE, TryCatch #8 {IllegalArgumentException -> 0x00d7, RuntimeException -> 0x00ce, blocks: (B:23:0x006d, B:31:0x0086, B:33:0x00a9, B:46:0x009b, B:50:0x00a2, B:51:0x00a5), top: B:22:0x006d, outer: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00a2 A[Catch: all -> 0x00cc, RuntimeException -> 0x00ce, IllegalArgumentException -> 0x00d7, TryCatch #8 {IllegalArgumentException -> 0x00d7, RuntimeException -> 0x00ce, blocks: (B:23:0x006d, B:31:0x0086, B:33:0x00a9, B:46:0x009b, B:50:0x00a2, B:51:0x00a5), top: B:22:0x006d, outer: #4 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private e.f.c.g.a<android.graphics.Bitmap> a(java.io.InputStream r9, android.graphics.BitmapFactory.Options r10, @javax.annotation.Nullable android.graphics.Rect r11, boolean r12) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.platform.b.a(java.io.InputStream, android.graphics.BitmapFactory$Options, android.graphics.Rect, boolean):e.f.c.g.a");
    }

    private static BitmapFactory.Options a(e.f.i.g.e eVar, Bitmap.Config config) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = eVar.s();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeStream(eVar.q(), null, options);
        if (options.outWidth != -1 && options.outHeight != -1) {
            options.inJustDecodeBounds = false;
            options.inDither = true;
            options.inPreferredConfig = config;
            options.inMutable = true;
            return options;
        }
        throw new IllegalArgumentException();
    }
}
