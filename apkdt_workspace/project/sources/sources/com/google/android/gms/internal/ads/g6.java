package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g6 {

    /* renamed from: a, reason: collision with root package name */
    private final boolean f6811a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f6812b;

    /* renamed from: c, reason: collision with root package name */
    private final boolean f6813c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f6814d;

    /* renamed from: e, reason: collision with root package name */
    private final boolean f6815e;

    private g6(i6 i6Var) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        z = i6Var.f7235a;
        this.f6811a = z;
        z2 = i6Var.f7236b;
        this.f6812b = z2;
        z3 = i6Var.f7237c;
        this.f6813c = z3;
        z4 = i6Var.f7238d;
        this.f6814d = z4;
        z5 = i6Var.f7239e;
        this.f6815e = z5;
    }

    public final JSONObject a() {
        try {
            return new JSONObject().put("sms", this.f6811a).put("tel", this.f6812b).put("calendar", this.f6813c).put("storePicture", this.f6814d).put("inlineVideo", this.f6815e);
        } catch (JSONException e2) {
            qd.b("Error occured while obtaining the MRAID capabilities.", e2);
            return null;
        }
    }
}
