package com.facebook.imagepipeline.transcoder;

import javax.annotation.Nullable;

/* compiled from: MultiImageTranscoderFactory.java */
/* loaded from: classes.dex */
public class f implements d {

    /* renamed from: a, reason: collision with root package name */
    private final int f4142a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f4143b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    private final d f4144c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private final Integer f4145d;

    public f(int i2, boolean z, @Nullable d dVar, @Nullable Integer num) {
        this.f4142a = i2;
        this.f4143b = z;
        this.f4144c = dVar;
        this.f4145d = num;
    }

    @Nullable
    private c a(e.f.h.c cVar, boolean z) {
        d dVar = this.f4144c;
        if (dVar == null) {
            return null;
        }
        return dVar.createImageTranscoder(cVar, z);
    }

    @Nullable
    private c b(e.f.h.c cVar, boolean z) {
        Integer num = this.f4145d;
        if (num == null) {
            return null;
        }
        int intValue = num.intValue();
        if (intValue == 0) {
            return c(cVar, z);
        }
        if (intValue == 1) {
            return d(cVar, z);
        }
        throw new IllegalArgumentException("Invalid ImageTranscoderType");
    }

    @Nullable
    private c c(e.f.h.c cVar, boolean z) {
        return com.facebook.imagepipeline.nativecode.c.a(this.f4142a, this.f4143b).createImageTranscoder(cVar, z);
    }

    private c d(e.f.h.c cVar, boolean z) {
        return new h(this.f4142a).createImageTranscoder(cVar, z);
    }

    @Override // com.facebook.imagepipeline.transcoder.d
    public c createImageTranscoder(e.f.h.c cVar, boolean z) {
        c a2 = a(cVar, z);
        if (a2 == null) {
            a2 = b(cVar, z);
        }
        if (a2 == null) {
            a2 = c(cVar, z);
        }
        return a2 == null ? d(cVar, z) : a2;
    }
}
