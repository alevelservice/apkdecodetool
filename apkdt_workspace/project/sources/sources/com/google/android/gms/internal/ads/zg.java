package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zg {

    /* renamed from: a, reason: collision with root package name */
    private long f10742a;

    public final long a(ByteBuffer byteBuffer) {
        vm vmVar;
        bk bkVar;
        long j2 = this.f10742a;
        if (j2 > 0) {
            return j2;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<ci> it = new zf(new wg(duplicate), dh.f6220c).i().iterator();
            while (true) {
                vmVar = null;
                if (!it.hasNext()) {
                    bkVar = null;
                    break;
                }
                ci next = it.next();
                if (next instanceof bk) {
                    bkVar = (bk) next;
                    break;
                }
            }
            Iterator<ci> it2 = bkVar.i().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                ci next2 = it2.next();
                if (next2 instanceof vm) {
                    vmVar = (vm) next2;
                    break;
                }
            }
            this.f10742a = (vmVar.c() * 1000) / vmVar.d();
            return this.f10742a;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
