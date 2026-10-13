package com.google.android.gms.flags;

import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
@Deprecated
/* loaded from: classes.dex */
public abstract class a<T> {

    @Deprecated
    /* renamed from: com.google.android.gms.flags.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0092a extends a<Boolean> {
        public C0092a(int i2, String str, Boolean bool) {
            super(i2, str, bool);
        }
    }

    private a(int i2, String str, T t) {
        c.a().a(this);
    }

    @KeepForSdk
    @Deprecated
    public static C0092a a(int i2, String str, Boolean bool) {
        return new C0092a(i2, str, bool);
    }
}
