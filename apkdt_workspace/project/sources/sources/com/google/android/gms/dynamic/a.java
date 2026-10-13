package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.h;
import com.google.android.gms.common.internal.m;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class a<T> {

    /* renamed from: a, reason: collision with root package name */
    private final String f5451a;

    /* renamed from: b, reason: collision with root package name */
    private T f5452b;

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @KeepForSdk
    /* renamed from: com.google.android.gms.dynamic.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0090a extends Exception {
        public C0090a(String str) {
            super(str);
        }

        public C0090a(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public a(String str) {
        this.f5451a = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @KeepForSdk
    public final T a(Context context) {
        if (this.f5452b == null) {
            m.a(context);
            Context b2 = h.b(context);
            if (b2 != null) {
                try {
                    this.f5452b = a((IBinder) b2.getClassLoader().loadClass(this.f5451a).newInstance());
                } catch (ClassNotFoundException e2) {
                    throw new C0090a("Could not load creator class.", e2);
                } catch (IllegalAccessException e3) {
                    throw new C0090a("Could not access creator.", e3);
                } catch (InstantiationException e4) {
                    throw new C0090a("Could not instantiate creator.", e4);
                }
            } else {
                throw new C0090a("Could not get remote context.");
            }
        }
        return this.f5452b;
    }

    @KeepForSdk
    protected abstract T a(IBinder iBinder);
}
