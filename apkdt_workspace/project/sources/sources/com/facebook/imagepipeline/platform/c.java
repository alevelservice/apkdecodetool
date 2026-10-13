package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.MemoryFile;
import com.facebook.common.internal.l;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import e.f.c.f.i;
import java.io.FileDescriptor;
import java.io.OutputStream;
import java.lang.reflect.Method;
import javax.annotation.Nullable;

/* compiled from: GingerbreadPurgeableDecoder.java */
/* loaded from: classes.dex */
public class c extends DalvikPurgeableDecoder {

    /* renamed from: d, reason: collision with root package name */
    private static Method f3895d;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private final e.f.c.k.b f3896c = e.f.c.k.c.b();

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap a(e.f.c.g.a<e.f.c.f.g> aVar, BitmapFactory.Options options) {
        return a(aVar, aVar.A().size(), (byte[]) null, options);
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap a(e.f.c.g.a<e.f.c.f.g> aVar, int i2, BitmapFactory.Options options) {
        return a(aVar, i2, DalvikPurgeableDecoder.a(aVar, i2) ? null : DalvikPurgeableDecoder.f3881b, options);
    }

    private static MemoryFile a(e.f.c.g.a<e.f.c.f.g> aVar, int i2, @Nullable byte[] bArr) {
        OutputStream outputStream;
        i iVar;
        e.f.c.i.a aVar2 = null;
        OutputStream outputStream2 = null;
        aVar2 = null;
        MemoryFile memoryFile = new MemoryFile(null, (bArr == null ? 0 : bArr.length) + i2);
        memoryFile.allowPurging(false);
        try {
            iVar = new i(aVar.A());
            try {
                e.f.c.i.a aVar3 = new e.f.c.i.a(iVar, i2);
                try {
                    outputStream2 = memoryFile.getOutputStream();
                    com.facebook.common.internal.a.a(aVar3, outputStream2);
                    if (bArr != null) {
                        memoryFile.writeBytes(bArr, 0, i2, bArr.length);
                    }
                    e.f.c.g.a.b(aVar);
                    com.facebook.common.internal.b.a(iVar);
                    com.facebook.common.internal.b.a(aVar3);
                    com.facebook.common.internal.b.a(outputStream2, true);
                    return memoryFile;
                } catch (Throwable th) {
                    th = th;
                    outputStream = outputStream2;
                    aVar2 = aVar3;
                    e.f.c.g.a.b(aVar);
                    com.facebook.common.internal.b.a(iVar);
                    com.facebook.common.internal.b.a(aVar2);
                    com.facebook.common.internal.b.a(outputStream, true);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            iVar = null;
        }
    }

    private synchronized Method a() {
        if (f3895d == null) {
            try {
                f3895d = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            } catch (Exception e2) {
                l.a(e2);
                throw null;
            }
        }
        return f3895d;
    }

    private FileDescriptor a(MemoryFile memoryFile) {
        try {
            return (FileDescriptor) a().invoke(memoryFile, new Object[0]);
        } catch (Exception e2) {
            l.a(e2);
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0037  */
    /* JADX WARN: Type inference failed for: r2v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.graphics.Bitmap a(e.f.c.g.a<e.f.c.f.g> r2, int r3, byte[] r4, android.graphics.BitmapFactory.Options r5) {
        /*
            r1 = this;
            r0 = 0
            android.os.MemoryFile r2 = a(r2, r3, r4)     // Catch: java.lang.Throwable -> L2c java.io.IOException -> L2f
            java.io.FileDescriptor r3 = r1.a(r2)     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
            e.f.c.k.b r4 = r1.f3896c     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
            if (r4 == 0) goto L20
            e.f.c.k.b r4 = r1.f3896c     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
            android.graphics.Bitmap r3 = r4.a(r3, r0, r5)     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
            java.lang.String r4 = "BitmapFactory returned null"
            com.facebook.common.internal.h.a(r3, r4)     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
            android.graphics.Bitmap r3 = (android.graphics.Bitmap) r3     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
            if (r2 == 0) goto L1f
            r2.close()
        L1f:
            return r3
        L20:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
            java.lang.String r4 = "WebpBitmapFactory is null"
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
            throw r3     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2a
        L28:
            r3 = move-exception
            goto L35
        L2a:
            r3 = move-exception
            goto L31
        L2c:
            r3 = move-exception
            r2 = r0
            goto L35
        L2f:
            r3 = move-exception
            r2 = r0
        L31:
            com.facebook.common.internal.l.a(r3)     // Catch: java.lang.Throwable -> L28
            throw r0
        L35:
            if (r2 == 0) goto L3a
            r2.close()
        L3a:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.imagepipeline.platform.c.a(e.f.c.g.a, int, byte[], android.graphics.BitmapFactory$Options):android.graphics.Bitmap");
    }
}
