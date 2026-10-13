package com.google.android.material.internal;

import android.graphics.Outline;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

/* compiled from: CircularBorderDrawableLollipop.java */
@RequiresApi(21)
@RestrictTo({RestrictTo.a.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class b extends a {
    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        copyBounds(this.f13842b);
        outline.setOval(this.f13842b);
    }
}
