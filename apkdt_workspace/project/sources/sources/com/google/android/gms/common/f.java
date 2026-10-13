package com.google.android.gms.common;

import android.content.Intent;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public class f extends l {
    private final int zzas;

    public f(int i2, String str, Intent intent) {
        super(str, intent);
        this.zzas = i2;
    }

    public int getConnectionStatusCode() {
        return this.zzas;
    }
}
