package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class wv1 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: g, reason: collision with root package name */
    private Context f10228g;

    /* renamed from: a, reason: collision with root package name */
    private final Object f10222a = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final ConditionVariable f10223b = new ConditionVariable();

    /* renamed from: c, reason: collision with root package name */
    private volatile boolean f10224c = false;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    private volatile boolean f10225d = false;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private SharedPreferences f10226e = null;

    /* renamed from: f, reason: collision with root package name */
    private Bundle f10227f = new Bundle();

    /* renamed from: h, reason: collision with root package name */
    private JSONObject f10229h = new JSONObject();

    private final void b() {
        if (this.f10226e == null) {
            return;
        }
        try {
            this.f10229h = new JSONObject((String) xc.a(this.f10228g, new Callable(this) { // from class: com.google.android.gms.internal.ads.yv1

                /* renamed from: e, reason: collision with root package name */
                private final wv1 f10661e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10661e = this;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f10661e.a();
                }
            }));
        } catch (JSONException unused) {
        }
    }

    /* JADX WARN: Type inference failed for: r6v6, types: [com.google.android.gms.internal.ads.yw1, com.google.android.gms.internal.ads.bw1] */
    public final void a(Context context) {
        if (this.f10224c) {
            return;
        }
        synchronized (this.f10222a) {
            if (this.f10224c) {
                return;
            }
            if (!this.f10225d) {
                this.f10225d = true;
            }
            this.f10228g = context.getApplicationContext() == null ? context : context.getApplicationContext();
            try {
                this.f10227f = com.google.android.gms.common.o.c.a(this.f10228g).a(this.f10228g.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            }
            try {
                Context b2 = com.google.android.gms.common.h.b(context);
                if (b2 == null && context != null && (b2 = context.getApplicationContext()) == null) {
                    b2 = context;
                }
                if (b2 == null) {
                    return;
                }
                mu1.c();
                this.f10226e = b2.getSharedPreferences("google_ads_flags", 0);
                if (this.f10226e != null) {
                    this.f10226e.registerOnSharedPreferenceChangeListener(this);
                }
                xw1.a(new bw1(this));
                b();
                this.f10224c = true;
            } finally {
                this.f10225d = false;
                this.f10223b.open();
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Object b(pv1 pv1Var) {
        return pv1Var.a(this.f10226e);
    }

    public final <T> T a(final pv1<T> pv1Var) {
        if (!this.f10223b.block(5000L)) {
            synchronized (this.f10222a) {
                if (!this.f10225d) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.f10224c || this.f10226e == null) {
            synchronized (this.f10222a) {
                if (this.f10224c && this.f10226e != null) {
                }
                return pv1Var.c();
            }
        }
        if (pv1Var.b() == 2) {
            Bundle bundle = this.f10227f;
            if (bundle == null) {
                return pv1Var.c();
            }
            return pv1Var.a(bundle);
        }
        if (pv1Var.b() == 1 && this.f10229h.has(pv1Var.a())) {
            return pv1Var.a(this.f10229h);
        }
        return (T) xc.a(this.f10228g, new Callable(this, pv1Var) { // from class: com.google.android.gms.internal.ads.zv1

            /* renamed from: e, reason: collision with root package name */
            private final wv1 f10854e;

            /* renamed from: f, reason: collision with root package name */
            private final pv1 f10855f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10854e = this;
                this.f10855f = pv1Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10854e.b(this.f10855f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String a() {
        return this.f10226e.getString("flag_configuration", "{}");
    }
}
