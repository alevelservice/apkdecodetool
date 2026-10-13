package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r3 implements y1, s3 {

    /* renamed from: e, reason: collision with root package name */
    private final p3 f9027e;

    /* renamed from: f, reason: collision with root package name */
    private final HashSet<AbstractMap.SimpleEntry<String, o0<? super p3>>> f9028f = new HashSet<>();

    public r3(p3 p3Var) {
        this.f9027e = p3Var;
    }

    @Override // com.google.android.gms.internal.ads.y1
    public final void a(String str, String str2) {
        b2.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.s3
    public final void b() {
        Iterator<AbstractMap.SimpleEntry<String, o0<? super p3>>> it = this.f9028f.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry<String, o0<? super p3>> next = it.next();
            String valueOf = String.valueOf(next.getValue().toString());
            na.e(valueOf.length() != 0 ? "Unregistering eventhandler: ".concat(valueOf) : new String("Unregistering eventhandler: "));
            this.f9027e.zzb(next.getKey(), next.getValue());
        }
        this.f9028f.clear();
    }

    @Override // com.google.android.gms.internal.ads.p3
    public final void zza(String str, o0<? super p3> o0Var) {
        this.f9027e.zza(str, o0Var);
        this.f9028f.add(new AbstractMap.SimpleEntry<>(str, o0Var));
    }

    @Override // com.google.android.gms.internal.ads.p1
    public final void zza(String str, Map map) {
        b2.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.p1
    public final void zza(String str, JSONObject jSONObject) {
        b2.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.p3
    public final void zzb(String str, o0<? super p3> o0Var) {
        this.f9027e.zzb(str, o0Var);
        this.f9028f.remove(new AbstractMap.SimpleEntry(str, o0Var));
    }

    @Override // com.google.android.gms.internal.ads.r2
    public final void zzb(String str, JSONObject jSONObject) {
        b2.a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.r2
    public final void zzct(String str) {
        this.f9027e.zzct(str);
    }
}
