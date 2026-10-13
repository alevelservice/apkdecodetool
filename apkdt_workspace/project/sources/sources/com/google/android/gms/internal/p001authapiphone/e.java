package com.google.android.gms.internal.p001authapiphone;

import android.app.Activity;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.phone.c;
import com.google.android.gms.common.api.internal.o;
import com.google.android.gms.common.api.internal.s;
import e.i.b.b.d.h;
import e.i.b.b.d.i;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
/* loaded from: classes.dex */
public final class e extends c {
    public e(Activity activity) {
        super(activity);
    }

    @Override // com.google.android.gms.auth.api.phone.c
    public final h<Void> a(@Nullable final String str) {
        s.a c2 = s.c();
        c2.a(new o(this, str) { // from class: com.google.android.gms.internal.auth-api-phone.g

            /* renamed from: a, reason: collision with root package name */
            private final e f11297a;

            /* renamed from: b, reason: collision with root package name */
            private final String f11298b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f11297a = this;
                this.f11298b = str;
            }

            @Override // com.google.android.gms.common.api.internal.o
            public final void a(Object obj, Object obj2) {
                e eVar = this.f11297a;
                ((zzj) ((f) obj).u()).zza(this.f11298b, new zzy(eVar, (i) obj2));
            }
        });
        c2.a(a.f11293c);
        return b(c2.a());
    }
}
