package com.facebook.imagepipeline.transcoder;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Build;
import com.facebook.imagepipeline.common.RotationOptions;
import java.io.OutputStream;
import javax.annotation.Nullable;

/* compiled from: SimpleImageTranscoder.java */
/* loaded from: classes.dex */
public class g implements c {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f4146a;

    /* renamed from: b, reason: collision with root package name */
    private final int f4147b;

    public g(boolean z, int i2) {
        this.f4146a = z;
        this.f4147b = i2;
    }

    private int b(e.f.i.g.e eVar, RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar2) {
        if (this.f4146a) {
            return a.a(rotationOptions, eVar2, eVar, this.f4147b);
        }
        return 1;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public b a(e.f.i.g.e eVar, OutputStream outputStream, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar2, @Nullable e.f.h.c cVar, @Nullable Integer num) {
        g gVar;
        RotationOptions rotationOptions2;
        com.facebook.imagepipeline.common.e eVar3;
        Bitmap bitmap;
        Throwable th;
        OutOfMemoryError e2;
        Integer num2 = num == null ? 85 : num;
        if (rotationOptions == null) {
            eVar3 = eVar2;
            rotationOptions2 = RotationOptions.e();
            gVar = this;
        } else {
            gVar = this;
            rotationOptions2 = rotationOptions;
            eVar3 = eVar2;
        }
        int b2 = gVar.b(eVar, rotationOptions2, eVar3);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = b2;
        try {
            Bitmap decodeStream = BitmapFactory.decodeStream(eVar.q(), null, options);
            if (decodeStream == null) {
                e.f.c.d.a.b("SimpleImageTranscoder", "Couldn't decode the EncodedImage InputStream ! ");
                return new b(2);
            }
            Matrix a2 = e.a(eVar, rotationOptions2);
            if (a2 != null) {
                try {
                    bitmap = Bitmap.createBitmap(decodeStream, 0, 0, decodeStream.getWidth(), decodeStream.getHeight(), a2, false);
                } catch (OutOfMemoryError e3) {
                    e2 = e3;
                    bitmap = decodeStream;
                    e.f.c.d.a.b("SimpleImageTranscoder", "Out-Of-Memory during transcode", e2);
                    b bVar = new b(2);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar;
                } catch (Throwable th2) {
                    th = th2;
                    bitmap = decodeStream;
                    bitmap.recycle();
                    decodeStream.recycle();
                    throw th;
                }
            } else {
                bitmap = decodeStream;
            }
            try {
                try {
                    bitmap.compress(b(cVar), num2.intValue(), outputStream);
                    b bVar2 = new b(b2 > 1 ? 0 : 1);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar2;
                } catch (OutOfMemoryError e4) {
                    e2 = e4;
                    e.f.c.d.a.b("SimpleImageTranscoder", "Out-Of-Memory during transcode", e2);
                    b bVar3 = new b(2);
                    bitmap.recycle();
                    decodeStream.recycle();
                    return bVar3;
                }
            } catch (Throwable th3) {
                th = th3;
                bitmap.recycle();
                decodeStream.recycle();
                throw th;
            }
        } catch (OutOfMemoryError e5) {
            e.f.c.d.a.b("SimpleImageTranscoder", "Out-Of-Memory during transcode", e5);
            return new b(2);
        }
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public String a() {
        return "SimpleImageTranscoder";
    }

    private static Bitmap.CompressFormat b(@Nullable e.f.h.c cVar) {
        if (cVar == null) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (cVar == e.f.h.b.f17450a) {
            return Bitmap.CompressFormat.JPEG;
        }
        if (cVar == e.f.h.b.f17451b) {
            return Bitmap.CompressFormat.PNG;
        }
        if (Build.VERSION.SDK_INT >= 14 && e.f.h.b.a(cVar)) {
            return Bitmap.CompressFormat.WEBP;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public boolean a(e.f.i.g.e eVar, @Nullable RotationOptions rotationOptions, @Nullable com.facebook.imagepipeline.common.e eVar2) {
        if (rotationOptions == null) {
            rotationOptions = RotationOptions.e();
        }
        return this.f4146a && a.a(rotationOptions, eVar2, eVar, this.f4147b) > 1;
    }

    @Override // com.facebook.imagepipeline.transcoder.c
    public boolean a(e.f.h.c cVar) {
        return cVar == e.f.h.b.f17460k || cVar == e.f.h.b.f17450a;
    }
}
