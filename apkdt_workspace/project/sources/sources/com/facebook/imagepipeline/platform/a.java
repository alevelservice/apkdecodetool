package com.facebook.imagepipeline.platform;

import a.i.m.h;
import android.annotation.TargetApi;
import android.graphics.BitmapFactory;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: ArtDecoder.java */
@ThreadSafe
@TargetApi(21)
/* loaded from: classes.dex */
public class a extends b {
    public a(com.facebook.imagepipeline.memory.d dVar, int i2, h hVar) {
        super(dVar, i2, hVar);
    }

    @Override // com.facebook.imagepipeline.platform.b
    public int a(int i2, int i3, BitmapFactory.Options options) {
        return com.facebook.imageutils.a.a(i2, i3, options.inPreferredConfig);
    }
}
