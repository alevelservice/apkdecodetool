package com.google.android.gms.ads.internal;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.t8;
import com.google.android.gms.internal.ads.wa;
import com.google.android.gms.internal.ads.zzanz;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    private final Context f4516a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f4517b;

    /* renamed from: c, reason: collision with root package name */
    private t8 f4518c;

    /* renamed from: d, reason: collision with root package name */
    private zzanz f4519d;

    public a(Context context, t8 t8Var, zzanz zzanzVar) {
        this.f4516a = context;
        this.f4518c = t8Var;
        this.f4519d = null;
        if (this.f4519d == null) {
            this.f4519d = new zzanz();
        }
    }

    private final boolean c() {
        t8 t8Var = this.f4518c;
        return (t8Var != null && t8Var.d().f10992j) || this.f4519d.f10960e;
    }

    public final void a() {
        this.f4517b = true;
    }

    public final boolean b() {
        return !c() || this.f4517b;
    }

    public final void a(@Nullable String str) {
        List<String> list;
        if (c()) {
            if (str == null) {
                str = "";
            }
            t8 t8Var = this.f4518c;
            if (t8Var != null) {
                t8Var.a(str, null, 3);
                return;
            }
            zzanz zzanzVar = this.f4519d;
            if (!zzanzVar.f10960e || (list = zzanzVar.f10961f) == null) {
                return;
            }
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2)) {
                    String replace = str2.replace("{NAVIGATION_URL}", Uri.encode(str));
                    n.c();
                    wa.a(this.f4516a, "", replace);
                }
            }
        }
    }
}
