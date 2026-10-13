package com.google.android.gms.common;

import android.content.Intent;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public class l extends Exception {
    private final Intent mIntent;

    public l(String str, Intent intent) {
        super(str);
        this.mIntent = intent;
    }

    public Intent getIntent() {
        return new Intent(this.mIntent);
    }
}
