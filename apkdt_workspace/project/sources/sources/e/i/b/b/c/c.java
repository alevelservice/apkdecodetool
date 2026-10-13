package e.i.b.b.c;

import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.internal.ShowFirstParty;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    private static final a.g<com.google.android.gms.signin.internal.a> f17833a = new a.g<>();

    /* renamed from: b, reason: collision with root package name */
    @ShowFirstParty
    private static final a.g<com.google.android.gms.signin.internal.a> f17834b = new a.g<>();

    /* renamed from: c, reason: collision with root package name */
    public static final a.AbstractC0084a<com.google.android.gms.signin.internal.a, a> f17835c = new b();

    /* renamed from: d, reason: collision with root package name */
    private static final a.AbstractC0084a<com.google.android.gms.signin.internal.a, Object> f17836d = new e();

    static {
        new Scope("profile");
        new Scope("email");
        new com.google.android.gms.common.api.a("SignIn.API", f17835c, f17833a);
        new com.google.android.gms.common.api.a("SignIn.INTERNAL_API", f17836d, f17834b);
    }
}
