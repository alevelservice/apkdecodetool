package com.facebook.imagepipeline.platform;

import a.i.m.h;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import javax.annotation.concurrent.ThreadSafe;

/* compiled from: OreoDecoder.java */
@ThreadSafe
@TargetApi(26)
/* loaded from: classes.dex */
public class e extends b {
    public e(com.facebook.imagepipeline.memory.d dVar, int i2, h hVar) {
        super(dVar, i2, hVar);
    }

    @Override // com.facebook.imagepipeline.platform.b
    public int a(int i2, int i3, BitmapFactory.Options options) {
        return a(options) ? i2 * i3 * 8 : com.facebook.imageutils.a.a(i2, i3, options.inPreferredConfig);
    }

    private static boolean a(BitmapFactory.Options options) {
        ColorSpace colorSpace = options.outColorSpace;
        return (colorSpace == null || !colorSpace.isWideGamut() || options.inPreferredConfig == Bitmap.Config.RGBA_F16) ? false : true;
    }
}
