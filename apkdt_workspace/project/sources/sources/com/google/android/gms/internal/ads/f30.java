package com.google.android.gms.internal.ads;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f30 {

    /* renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f6557a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f6558b;

    public f30(gc gcVar, com.google.android.gms.common.util.e eVar, Executor executor) {
        this.f6557a = eVar;
        this.f6558b = executor;
    }

    public final qz0<Bitmap> a(String str, double d2, boolean z) {
        return gz0.a(gc.a(str), new i30(this, d2, z), this.f6558b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap a(byte[] bArr, double d2, boolean z) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inDensity = (int) (d2 * 160.0d);
        if (!z) {
            options.inPreferredConfig = Bitmap.Config.RGB_565;
        }
        if (((Boolean) mu1.e().a(aw1.x3)).booleanValue()) {
            options.inJustDecodeBounds = true;
            a(bArr, options);
            options.inJustDecodeBounds = false;
            int i2 = options.outWidth * options.outHeight;
            if (i2 > 0) {
                int i3 = i2 - 1;
                options.inSampleSize = 1 << ((33 - Integer.numberOfLeadingZeros(i3 / ((Integer) mu1.e().a(aw1.y3)).intValue())) / 2);
            }
        }
        return a(bArr, options);
    }

    private final Bitmap a(byte[] bArr, BitmapFactory.Options options) {
        long c2 = this.f6557a.c();
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        long c3 = this.f6557a.c();
        if (Build.VERSION.SDK_INT >= 19 && decodeByteArray != null) {
            int width = decodeByteArray.getWidth();
            int height = decodeByteArray.getHeight();
            int allocationByteCount = decodeByteArray.getAllocationByteCount();
            long j2 = c3 - c2;
            boolean z = Looper.getMainLooper().getThread() == Thread.currentThread();
            StringBuilder sb = new StringBuilder(108);
            sb.append("Decoded image w: ");
            sb.append(width);
            sb.append(" h:");
            sb.append(height);
            sb.append(" bytes: ");
            sb.append(allocationByteCount);
            sb.append(" time: ");
            sb.append(j2);
            sb.append(" on ui thread: ");
            sb.append(z);
            na.e(sb.toString());
        }
        return decodeByteArray;
    }
}
