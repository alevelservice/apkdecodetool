package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class ws {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10182a;

    /* renamed from: b, reason: collision with root package name */
    private final ws0 f10183b;

    /* renamed from: c, reason: collision with root package name */
    private Bundle f10184c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    private final String f10185d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private final us0 f10186e;

    /* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private Context f10187a;

        /* renamed from: b, reason: collision with root package name */
        private ws0 f10188b;

        /* renamed from: c, reason: collision with root package name */
        private Bundle f10189c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        private String f10190d;

        /* renamed from: e, reason: collision with root package name */
        @Nullable
        private us0 f10191e;

        public final a a(Context context) {
            this.f10187a = context;
            return this;
        }

        public final a a(ws0 ws0Var) {
            this.f10188b = ws0Var;
            return this;
        }

        public final a a(Bundle bundle) {
            this.f10189c = bundle;
            return this;
        }

        public final a a(String str) {
            this.f10190d = str;
            return this;
        }

        public final ws a() {
            return new ws(this);
        }

        public final a a(us0 us0Var) {
            this.f10191e = us0Var;
            return this;
        }
    }

    private ws(a aVar) {
        this.f10182a = aVar.f10187a;
        this.f10183b = aVar.f10188b;
        this.f10184c = aVar.f10189c;
        this.f10185d = aVar.f10190d;
        this.f10186e = aVar.f10191e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final a a() {
        a aVar = new a();
        aVar.a(this.f10182a);
        aVar.a(this.f10183b);
        aVar.a(this.f10185d);
        aVar.a(this.f10184c);
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ws0 b() {
        return this.f10183b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final us0 c() {
        return this.f10186e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final Bundle d() {
        return this.f10184c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final String e() {
        return this.f10185d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context a(Context context) {
        return this.f10185d != null ? context : this.f10182a;
    }
}
