package com.facebook.imagepipeline.platform;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.facebook.common.internal.h;
import com.facebook.imagepipeline.memory.p;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: KitKatPurgeableDecoder.java */
@ThreadSafe
@TargetApi(19)
/* loaded from: classes.dex */
public class d extends DalvikPurgeableDecoder {

    /* renamed from: c, reason: collision with root package name */
    private final p f3897c;

    public d(p pVar) {
        this.f3897c = pVar;
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap a(e.f.c.g.a<e.f.c.f.g> aVar, BitmapFactory.Options options) {
        e.f.c.f.g A = aVar.A();
        int size = A.size();
        e.f.c.g.a<byte[]> a2 = this.f3897c.a(size);
        try {
            byte[] A2 = a2.A();
            A.a(0, A2, 0, size);
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(A2, 0, size, options);
            h.a(decodeByteArray, "BitmapFactory returned null");
            return decodeByteArray;
        } finally {
            e.f.c.g.a.b(a2);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap a(e.f.c.g.a<e.f.c.f.g> aVar, int i2, BitmapFactory.Options options) {
        byte[] bArr = DalvikPurgeableDecoder.a(aVar, i2) ? null : DalvikPurgeableDecoder.f3881b;
        e.f.c.f.g A = aVar.A();
        h.a(i2 <= A.size());
        int i3 = i2 + 2;
        e.f.c.g.a<byte[]> a2 = this.f3897c.a(i3);
        try {
            byte[] A2 = a2.A();
            A.a(0, A2, 0, i2);
            if (bArr != null) {
                a(A2, i2);
                i2 = i3;
            }
            Bitmap decodeByteArray = BitmapFactory.decodeByteArray(A2, 0, i2, options);
            h.a(decodeByteArray, "BitmapFactory returned null");
            return decodeByteArray;
        } finally {
            e.f.c.g.a.b(a2);
        }
    }

    private static void a(byte[] bArr, int i2) {
        bArr[i2] = -1;
        bArr[i2 + 1] = -39;
    }
}
