package com.facebook.imagepipeline.transcoder;

/* compiled from: SimpleImageTranscoderFactory.java */
/* loaded from: classes.dex */
public class h implements d {

    /* renamed from: a, reason: collision with root package name */
    private final int f4148a;

    public h(int i2) {
        this.f4148a = i2;
    }

    @Override // com.facebook.imagepipeline.transcoder.d
    public c createImageTranscoder(e.f.h.c cVar, boolean z) {
        return new g(z, this.f4148a);
    }
}
