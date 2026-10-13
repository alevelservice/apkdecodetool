package com.mapbox.mapboxsdk.maps;

import androidx.annotation.Keep;

@Keep
/* loaded from: classes2.dex */
public class Image {
    private final byte[] buffer;
    private final float[] content;
    private final int height;
    private final String name;
    private final float pixelRatio;
    private final boolean sdf;
    private final float[] stretchX;
    private final float[] stretchY;
    private final int width;

    public Image(byte[] bArr, float f2, String str, int i2, int i3, boolean z) {
        this(bArr, f2, str, i2, i3, z, null, null, null);
    }

    public Image(byte[] bArr, float f2, String str, int i2, int i3, boolean z, float[] fArr, float[] fArr2, float[] fArr3) {
        this.buffer = bArr;
        this.pixelRatio = f2;
        this.name = str;
        this.width = i2;
        this.height = i3;
        this.sdf = z;
        this.content = fArr3;
        this.stretchX = fArr;
        this.stretchY = fArr2;
    }
}
