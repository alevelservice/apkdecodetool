package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: e, reason: collision with root package name */
    private static final Object f5301e = new Object();

    /* renamed from: f, reason: collision with root package name */
    private static h f5302f;

    /* JADX INFO: Access modifiers changed from: protected */
    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: f, reason: collision with root package name */
        private static final Uri f5303f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

        /* renamed from: a, reason: collision with root package name */
        private final String f5304a;

        /* renamed from: b, reason: collision with root package name */
        private final String f5305b;

        /* renamed from: c, reason: collision with root package name */
        private final ComponentName f5306c;

        /* renamed from: d, reason: collision with root package name */
        private final int f5307d;

        /* renamed from: e, reason: collision with root package name */
        private final boolean f5308e;

        public a(String str, String str2, int i2, boolean z) {
            m.b(str);
            this.f5304a = str;
            m.b(str2);
            this.f5305b = str2;
            this.f5306c = null;
            this.f5307d = i2;
            this.f5308e = z;
        }

        public final ComponentName a() {
            return this.f5306c;
        }

        public final String b() {
            return this.f5305b;
        }

        public final int c() {
            return this.f5307d;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return k.a(this.f5304a, aVar.f5304a) && k.a(this.f5305b, aVar.f5305b) && k.a(this.f5306c, aVar.f5306c) && this.f5307d == aVar.f5307d && this.f5308e == aVar.f5308e;
        }

        public final int hashCode() {
            return k.a(this.f5304a, this.f5305b, this.f5306c, Integer.valueOf(this.f5307d), Boolean.valueOf(this.f5308e));
        }

        public final String toString() {
            String str = this.f5304a;
            return str == null ? this.f5306c.flattenToString() : str;
        }

        public final Intent a(Context context) {
            if (this.f5304a != null) {
                if (this.f5308e) {
                    Bundle bundle = new Bundle();
                    bundle.putString("serviceActionBundleKey", this.f5304a);
                    Bundle call = context.getContentResolver().call(f5303f, "serviceIntentCall", (String) null, bundle);
                    r1 = call != null ? (Intent) call.getParcelable("serviceResponseIntentKey") : null;
                    if (r1 == null) {
                        String valueOf = String.valueOf(this.f5304a);
                        if (valueOf.length() != 0) {
                            "Dynamic lookup for intent failed for action: ".concat(valueOf);
                        } else {
                            new String("Dynamic lookup for intent failed for action: ");
                        }
                    }
                }
                return r1 == null ? new Intent(this.f5304a).setPackage(this.f5305b) : r1;
            }
            return new Intent().setComponent(this.f5306c);
        }
    }

    @KeepForSdk
    public static h a(Context context) {
        synchronized (f5301e) {
            if (f5302f == null) {
                f5302f = new g0(context.getApplicationContext());
            }
        }
        return f5302f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean a(a aVar, ServiceConnection serviceConnection, String str);

    protected abstract void b(a aVar, ServiceConnection serviceConnection, String str);

    public final void a(String str, String str2, int i2, ServiceConnection serviceConnection, String str3, boolean z) {
        b(new a(str, str2, i2, z), serviceConnection, str3);
    }
}
