package com.facebook.imagepipeline.nativecode;

import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.internal.h;
import com.facebook.imagepipeline.common.RotationOptions;
import java.io.InputStream;
import java.io.OutputStream;
import javax.annotation.Nullable;

@DoNotStrip
/* loaded from: classes.dex */
public class NativeJpegTranscoder implements com.facebook.imagepipeline.transcoder.c {

    /* renamed from: a, reason: collision with root package name */
    private boolean f3883a;

    /* renamed from: b, reason: collision with root package name */
    private int f3884b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f3885c;

    static {
        d.a();
    }

    public NativeJpegTranscoder(boolean z, int i2, boolean z2) {
        this.f3883a = z;
        this.f3884b = i2;
        this.f3885c = z2;
    }

    @VisibleForTesting
    public static void b(InputStream inputStream, OutputStream outputStream, int i2, int i3, int i4) {
        d.a();
        h.a(i3 >= 1);
        h.a(i3 <= 16);
        h.a(i4 >= 0);
        h.a(i4 <= 100);
        h.a(com.facebook.imagepipeline.transcoder.e.c(i2));
        h.a((i3 == 8 && i2 == 1) ? false : true, "no transformation requested");
        h.a(inputStream);
        h.a(outputStream);
        nativeTranscodeJpegWithExifOrientation(inputStream, outputStream, i2, i3, i4);
    }

    @DoNotStrip
    private static native void nativeTranscodeJpeg(InputStream inputStream, OutputStream outputStream, int i2, int i3, int i4);

    @DoNotStrip
    private static native void nativeTranscodeJpegWithExifOrientation(InputStream inputStream, OutputStream outputStream, int i2, int i3, int i4);

    @Override // com.facebook.imagepipeline.transcoder.c
    public String a() {
        return "NativeJpegTranscoder";
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public boolean a(e.f.i.g.e eVar, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar2) {
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.e();
        }
        return com.facebook.imagepipeline.transcoder.e.a(rotationOptions, eVar2, eVar, this.f3883a) < 8;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public boolean a(e.f.h.c cVar) {
        return cVar == e.f.h.b.f17450a;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public com.facebook.imagepipeline.transcoder.b a(e.f.i.g.e eVar, OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar2, @Nullable e.f.h.c cVar, @Nullable Integer num) {
        if (num == null) {
            num = 85;
        }
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.e();
        }
        int a2 = com.facebook.imagepipeline.transcoder.a.a(rotationOptions, eVar2, eVar, this.f3884b);
        try {
            int a3 = com.facebook.imagepipeline.transcoder.e.a(rotationOptions, eVar2, eVar, this.f3883a);
            int a4 = com.facebook.imagepipeline.transcoder.e.a(a2);
            if (this.f3885c) {
                a3 = a4;
            }
            InputStream q = eVar.q();
            if (com.facebook.imagepipeline.transcoder.e.f4141a.contains(Integer.valueOf(eVar.m()))) {
                b(q, outputStream, com.facebook.imagepipeline.transcoder.e.a(rotationOptions, eVar), a3, num.intValue());
            } else {
                a(q, outputStream, com.facebook.imagepipeline.transcoder.e.b(rotationOptions, eVar), a3, num.intValue());
            }
            com.facebook.common.internal.b.a(q);
            return new com.facebook.imagepipeline.transcoder.b(a2 != 1 ? 0 : 1);
        } catch (Throwable th) {
            com.facebook.common.internal.b.a(null);
            throw th;
        }
    }

    @VisibleForTesting
    public static void a(InputStream inputStream, OutputStream outputStream, int i2, int i3, int i4) {
        d.a();
        h.a(i3 >= 1);
        h.a(i3 <= 16);
        h.a(i4 >= 0);
        h.a(i4 <= 100);
        h.a(com.facebook.imagepipeline.transcoder.e.d(i2));
        h.a((i3 == 8 && i2 == 0) ? false : true, "no transformation requested");
        h.a(inputStream);
        h.a(outputStream);
        nativeTranscodeJpeg(inputStream, outputStream, i2, i3, i4);
    }
}
