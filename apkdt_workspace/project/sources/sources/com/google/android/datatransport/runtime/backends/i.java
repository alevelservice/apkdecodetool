package com.google.android.datatransport.runtime.backends;

import android.content.Context;
import androidx.annotation.NonNull;

/* compiled from: CreationContext.java */
/* loaded from: classes.dex */
public abstract class i {
    public static i a(Context context, com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, String str) {
        return new c(context, aVar, aVar2, str);
    }

    public abstract Context a();

    @NonNull
    public abstract String b();

    public abstract com.google.android.datatransport.runtime.time.a c();

    public abstract com.google.android.datatransport.runtime.time.a d();
}
