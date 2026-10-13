package com.google.android.gms.internal.vision;

import android.content.Context;
import android.database.ContentObserver;
import androidx.annotation.GuardedBy;
import androidx.core.content.PermissionChecker;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class o implements n {

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("GservicesLoader.class")
    private static o f12455c;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    private final Context f12456a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    private final ContentObserver f12457b;

    private o(Context context) {
        this.f12456a = context;
        this.f12457b = new q(this, null);
        context.getContentResolver().registerContentObserver(e.f12331a, true, this.f12457b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static o a(Context context) {
        o oVar;
        synchronized (o.class) {
            if (f12455c == null) {
                f12455c = PermissionChecker.b(context, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new o(context) : new o();
            }
            oVar = f12455c;
        }
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.vision.n
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final String zzb(final String str) {
        if (this.f12456a == null) {
            return null;
        }
        try {
            return (String) m.a(new p(this, str) { // from class: com.google.android.gms.internal.vision.r

                /* renamed from: a, reason: collision with root package name */
                private final o f12491a;

                /* renamed from: b, reason: collision with root package name */
                private final String f12492b;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f12491a = this;
                    this.f12492b = str;
                }

                @Override // com.google.android.gms.internal.vision.p
                public final Object a() {
                    return this.f12491a.a(this.f12492b);
                }
            });
        } catch (IllegalStateException | SecurityException unused) {
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                "Unable to read GServices for: ".concat(valueOf);
            } else {
                new String("Unable to read GServices for: ");
            }
            return null;
        }
    }

    private o() {
        this.f12456a = null;
        this.f12457b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a() {
        synchronized (o.class) {
            if (f12455c != null && f12455c.f12456a != null && f12455c.f12457b != null) {
                f12455c.f12456a.getContentResolver().unregisterContentObserver(f12455c.f12457b);
            }
            f12455c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String a(String str) {
        return e.a(this.f12456a.getContentResolver(), str, (String) null);
    }
}
