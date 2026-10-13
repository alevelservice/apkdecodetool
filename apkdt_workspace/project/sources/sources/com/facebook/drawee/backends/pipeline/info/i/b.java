package com.facebook.drawee.backends.pipeline.info.i;

import com.facebook.drawee.backends.pipeline.info.g;
import com.facebook.drawee.backends.pipeline.info.h;

/* compiled from: ImagePerfImageOriginListener.java */
/* loaded from: classes.dex */
public class b implements com.facebook.drawee.backends.pipeline.info.b {

    /* renamed from: a, reason: collision with root package name */
    private final h f3569a;

    /* renamed from: b, reason: collision with root package name */
    private final g f3570b;

    public b(h hVar, g gVar) {
        this.f3569a = hVar;
        this.f3570b = gVar;
    }

    @Override // com.facebook.drawee.backends.pipeline.info.b
    public void a(String str, int i2, boolean z) {
        this.f3569a.b(i2);
        this.f3570b.b(this.f3569a, 1);
    }
}
