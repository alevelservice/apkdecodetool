package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class vv1 {

    /* renamed from: a, reason: collision with root package name */
    private final Collection<pv1<?>> f9994a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    private final Collection<pv1<String>> f9995b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    private final Collection<pv1<String>> f9996c = new ArrayList();

    public final void a(pv1 pv1Var) {
        this.f9994a.add(pv1Var);
    }

    public final void b(pv1<String> pv1Var) {
        this.f9995b.add(pv1Var);
    }

    public final void c(pv1<String> pv1Var) {
        this.f9996c.add(pv1Var);
    }

    public final void a(SharedPreferences.Editor editor, int i2, JSONObject jSONObject) {
        for (pv1<?> pv1Var : this.f9994a) {
            if (pv1Var.b() == 1) {
                pv1Var.a(editor, (SharedPreferences.Editor) pv1Var.a(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            qd.b("Flag Json is null.");
        }
    }

    public final List<String> b() {
        List<String> a2 = a();
        Iterator<pv1<String>> it = this.f9996c.iterator();
        while (it.hasNext()) {
            String str = (String) mu1.e().a(it.next());
            if (str != null) {
                a2.add(str);
            }
        }
        return a2;
    }

    public final List<String> a() {
        ArrayList arrayList = new ArrayList();
        Iterator<pv1<String>> it = this.f9995b.iterator();
        while (it.hasNext()) {
            String str = (String) mu1.e().a(it.next());
            if (str != null) {
                arrayList.add(str);
            }
        }
        return arrayList;
    }
}
