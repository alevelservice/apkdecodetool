package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class yd1 extends wd1 implements ci {
    private int m;

    /* JADX INFO: Access modifiers changed from: protected */
    public yd1(String str) {
        super(str);
    }

    public final int b() {
        if (!this.f10092f) {
            a();
        }
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long b(ByteBuffer byteBuffer) {
        this.m = bj.a(byteBuffer.get());
        bj.b(byteBuffer);
        bj.a(byteBuffer.get());
        return 4L;
    }
}
