package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
@TargetApi(21)
/* loaded from: classes.dex */
final class y8 {

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, String> f10495d;

    /* renamed from: a, reason: collision with root package name */
    private final Context f10496a;

    /* renamed from: b, reason: collision with root package name */
    private final List<String> f10497b;

    /* renamed from: c, reason: collision with root package name */
    private final l8 f10498c;

    static {
        HashMap hashMap = new HashMap();
        if (com.google.android.gms.common.util.o.h()) {
            hashMap.put("android.webkit.resource.AUDIO_CAPTURE", "android.permission.RECORD_AUDIO");
            hashMap.put("android.webkit.resource.VIDEO_CAPTURE", "android.permission.CAMERA");
        }
        f10495d = hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public y8(Context context, List<String> list, l8 l8Var) {
        this.f10496a = context;
        this.f10497b = list;
        this.f10498c = l8Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<String> a(String[] strArr) {
        boolean z;
        boolean z2;
        String valueOf;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Iterator<String> it = this.f10497b.iterator();
            do {
                z = true;
                if (!it.hasNext()) {
                    z2 = false;
                    break;
                }
                String next = it.next();
                if (next.equals(str)) {
                    break;
                }
                valueOf = String.valueOf(next);
            } while (!(valueOf.length() != 0 ? "android.webkit.resource.".concat(valueOf) : new String("android.webkit.resource.")).equals(str));
            z2 = true;
            if (z2) {
                if (f10495d.containsKey(str)) {
                    com.google.android.gms.ads.internal.n.c();
                    if (!wa.b(this.f10496a, f10495d.get(str))) {
                        z = false;
                    }
                }
                if (z) {
                    arrayList.add(str);
                } else {
                    this.f10498c.c(str);
                }
            } else {
                this.f10498c.b(str);
            }
        }
        return arrayList;
    }
}
