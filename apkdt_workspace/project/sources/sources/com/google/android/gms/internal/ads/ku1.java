package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class ku1<T> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private static final zzvn f7758a = c();

    private static zzvn c() {
        try {
            Object newInstance = eu1.class.getClassLoader().loadClass("com.google.android.gms.ads.internal.ClientApi").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            if (!(newInstance instanceof IBinder)) {
                qd.d("ClientApi class is not an instance of IBinder.");
                return null;
            }
            IBinder iBinder = (IBinder) newInstance;
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IClientApi");
            if (queryLocalInterface instanceof zzvn) {
                return (zzvn) queryLocalInterface;
            }
            return new zzvp(iBinder);
        } catch (Exception unused) {
            qd.d("Failed to instantiate ClientApi class.");
            return null;
        }
    }

    @Nullable
    private final T d() {
        zzvn zzvnVar = f7758a;
        if (zzvnVar == null) {
            qd.d("ClientApi class cannot be loaded.");
            return null;
        }
        try {
            return a(zzvnVar);
        } catch (RemoteException e2) {
            qd.c("Cannot invoke local loader using ClientApi class.", e2);
            return null;
        }
    }

    @Nullable
    private final T e() {
        try {
            return b();
        } catch (RemoteException e2) {
            qd.c("Cannot invoke remote loader.", e2);
            return null;
        }
    }

    @NonNull
    protected abstract T a();

    public final T a(Context context, boolean z) {
        T d2;
        boolean z2 = z;
        if (!z2) {
            mu1.a();
            if (!gd.c(context, com.google.android.gms.common.h.f5182a)) {
                qd.a("Google Play Services is not available.");
                z2 = true;
            }
        }
        if (DynamiteModule.a(context, ModuleDescriptor.MODULE_ID) > DynamiteModule.b(context, ModuleDescriptor.MODULE_ID)) {
            z2 = true;
        }
        aw1.a(context);
        if (((Boolean) mu1.e().a(aw1.N2)).booleanValue()) {
            z2 = false;
        }
        if (z2) {
            d2 = d();
            if (d2 == null) {
                d2 = e();
            }
        } else {
            T e2 = e();
            int i2 = e2 == null ? 1 : 0;
            if (i2 != 0) {
                if (mu1.h().nextInt(((Integer) mu1.e().a(aw1.C3)).intValue()) == 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("action", "dynamite_load");
                    bundle.putInt("is_missing", i2);
                    mu1.a().a(context, mu1.g().f11000e, "gmob-apps", bundle, true);
                }
            }
            d2 = e2 == null ? d() : e2;
        }
        return d2 == null ? a() : d2;
    }

    @Nullable
    protected abstract T a(zzvn zzvnVar);

    @Nullable
    protected abstract T b();
}
