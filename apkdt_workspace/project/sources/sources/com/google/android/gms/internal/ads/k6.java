package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class k6 {

    /* renamed from: a, reason: collision with root package name */
    private final fi f7618a;

    /* renamed from: b, reason: collision with root package name */
    private final String f7619b;

    public k6(fi fiVar) {
        this(fiVar, "");
    }

    public final void a(String str) {
        try {
            JSONObject put = new JSONObject().put("message", str).put("action", this.f7619b);
            if (this.f7618a != null) {
                this.f7618a.zza("onError", put);
            }
        } catch (JSONException e2) {
            qd.b("Error occurred while dispatching error event.", e2);
        }
    }

    public final void b(String str) {
        try {
            this.f7618a.zza("onReadyEventReceived", new JSONObject().put("js", str));
        } catch (JSONException e2) {
            qd.b("Error occurred while dispatching ready Event.", e2);
        }
    }

    public final void c(String str) {
        try {
            this.f7618a.zza("onStateChanged", new JSONObject().put("state", str));
        } catch (JSONException e2) {
            qd.b("Error occurred while dispatching state change.", e2);
        }
    }

    public k6(fi fiVar, String str) {
        this.f7618a = fiVar;
        this.f7619b = str;
    }

    public final void b(int i2, int i3, int i4, int i5) {
        try {
            this.f7618a.zza("onDefaultPositionReceived", new JSONObject().put("x", i2).put("y", i3).put("width", i4).put("height", i5));
        } catch (JSONException e2) {
            qd.b("Error occurred while dispatching default position.", e2);
        }
    }

    public final void a(int i2, int i3, int i4, int i5) {
        try {
            this.f7618a.zza("onSizeChanged", new JSONObject().put("x", i2).put("y", i3).put("width", i4).put("height", i5));
        } catch (JSONException e2) {
            qd.b("Error occurred while dispatching size change.", e2);
        }
    }

    public final void a(int i2, int i3, int i4, int i5, float f2, int i6) {
        try {
            this.f7618a.zza("onScreenInfoChanged", new JSONObject().put("width", i2).put("height", i3).put("maxSizeWidth", i4).put("maxSizeHeight", i5).put("density", f2).put("rotation", i6));
        } catch (JSONException e2) {
            qd.b("Error occurred while obtaining screen information.", e2);
        }
    }
}
