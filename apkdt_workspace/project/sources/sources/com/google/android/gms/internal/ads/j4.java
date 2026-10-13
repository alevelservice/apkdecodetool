package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class j4 implements je {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ he f7423a;

    /* renamed from: b, reason: collision with root package name */
    private final /* synthetic */ i3 f7424b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j4(h4 h4Var, he heVar, i3 i3Var) {
        this.f7423a = heVar;
        this.f7424b = i3Var;
    }

    @Override // com.google.android.gms.internal.ads.je
    public final void run() {
        this.f7423a.a(new u3("Unable to obtain a JavascriptEngine."));
        this.f7424b.c();
    }
}
