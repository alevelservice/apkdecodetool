package com.google.android.gms.auth.api.phone;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.e;
import com.google.android.gms.internal.p001authapiphone.f;
import e.i.b.b.d.h;

/* compiled from: com.google.android.gms:play-services-auth-api-phone@@17.4.0 */
/* loaded from: classes.dex */
public abstract class c extends e<a.d.C0086d> implements b {

    /* renamed from: j, reason: collision with root package name */
    private static final a.g<f> f4800j = new a.g<>();

    /* renamed from: k, reason: collision with root package name */
    private static final a.AbstractC0084a<f, a.d.C0086d> f4801k = new d();

    /* renamed from: l, reason: collision with root package name */
    private static final com.google.android.gms.common.api.a<a.d.C0086d> f4802l = new com.google.android.gms.common.api.a<>("SmsRetriever.API", f4801k, f4800j);

    public c(@NonNull Activity activity) {
        super(activity, (com.google.android.gms.common.api.a<a.d>) f4802l, (a.d) null, e.a.f5008c);
    }

    public abstract h<Void> a(@Nullable String str);
}
