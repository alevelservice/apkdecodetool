package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ua0 implements hz0<vs0> {

    /* renamed from: a, reason: collision with root package name */
    private final /* synthetic */ oa0 f9698a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ua0(oa0 oa0Var) {
        this.f9698a = oa0Var;
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final void a(Throwable th) {
        Pattern pattern;
        kc0 kc0Var;
        if (((Boolean) mu1.e().a(aw1.D3)).booleanValue()) {
            pattern = oa0.f8502g;
            Matcher matcher = pattern.matcher(th.getMessage());
            if (matcher.matches()) {
                String group = matcher.group(1);
                kc0Var = this.f9698a.f8507f;
                kc0Var.a(Integer.parseInt(group));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.hz0
    public final /* synthetic */ void a(vs0 vs0Var) {
        kc0 kc0Var;
        kc0 kc0Var2;
        vs0 vs0Var2 = vs0Var;
        if (((Boolean) mu1.e().a(aw1.D3)).booleanValue()) {
            kc0Var = this.f9698a.f8507f;
            kc0Var.a(vs0Var2.f9986b.f9630b.f8772e);
            kc0Var2 = this.f9698a.f8507f;
            kc0Var2.a(vs0Var2.f9986b.f9630b.f8773f);
        }
    }
}
