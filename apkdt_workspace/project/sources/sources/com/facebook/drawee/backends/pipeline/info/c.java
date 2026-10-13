package com.facebook.drawee.backends.pipeline.info;

import javax.annotation.Nullable;

/* compiled from: ImageOriginRequestListener.java */
/* loaded from: classes.dex */
public class c extends e.f.i.h.a {

    /* renamed from: a, reason: collision with root package name */
    private String f3542a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final b f3543b;

    public c(String str, @Nullable b bVar) {
        this.f3543b = bVar;
        c(str);
    }

    @Override // e.f.i.h.a, com.facebook.imagepipeline.producers.l0
    public void a(String str, String str2, boolean z) {
        b bVar = this.f3543b;
        if (bVar != null) {
            bVar.a(this.f3542a, d.a(str2), z);
        }
    }

    public void c(String str) {
        this.f3542a = str;
    }
}
