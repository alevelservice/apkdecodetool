package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.flags.zzd;

@DynamiteApi
/* loaded from: classes.dex */
public class FlagProviderImpl extends zzd {

    /* renamed from: e, reason: collision with root package name */
    private boolean f5473e = false;

    /* renamed from: f, reason: collision with root package name */
    private SharedPreferences f5474f;

    @Override // com.google.android.gms.flags.zzc
    public boolean getBooleanFlagValue(String str, boolean z, int i2) {
        return !this.f5473e ? z : b.a(this.f5474f, str, Boolean.valueOf(z)).booleanValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public int getIntFlagValue(String str, int i2, int i3) {
        return !this.f5473e ? i2 : d.a(this.f5474f, str, Integer.valueOf(i2)).intValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public long getLongFlagValue(String str, long j2, int i2) {
        return !this.f5473e ? j2 : f.a(this.f5474f, str, Long.valueOf(j2)).longValue();
    }

    @Override // com.google.android.gms.flags.zzc
    public String getStringFlagValue(String str, String str2, int i2) {
        return !this.f5473e ? str2 : h.a(this.f5474f, str, str2);
    }

    @Override // com.google.android.gms.flags.zzc
    public void init(IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        if (this.f5473e) {
            return;
        }
        try {
            this.f5474f = j.a(context.createPackageContext("com.google.android.gms", 0));
            this.f5473e = true;
        } catch (PackageManager.NameNotFoundException unused) {
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                "Could not retrieve sdk flags, continuing with defaults: ".concat(valueOf);
            } else {
                new String("Could not retrieve sdk flags, continuing with defaults: ");
            }
        }
    }
}
