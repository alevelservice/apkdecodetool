package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.PowerManager;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class on implements z3<sn> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f8563a;

    /* renamed from: b, reason: collision with root package name */
    private final zp1 f8564b;

    /* renamed from: c, reason: collision with root package name */
    private final PowerManager f8565c;

    public on(Context context, zp1 zp1Var) {
        this.f8563a = context;
        this.f8564b = zp1Var;
        this.f8565c = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.z3
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final JSONObject d(sn snVar) {
        boolean isScreenOn;
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        cq1 cq1Var = snVar.f9405e;
        if (cq1Var == null) {
            jSONObject = new JSONObject();
        } else if (this.f8564b.c() != null) {
            boolean z = cq1Var.f6087a;
            JSONObject jSONObject3 = new JSONObject();
            JSONObject put = jSONObject3.put("afmaVersion", this.f8564b.b()).put("activeViewJSON", this.f8564b.c()).put("timestamp", snVar.f9403c).put("adFormat", this.f8564b.a()).put("hashCode", this.f8564b.d()).put("isMraid", false).put("isStopped", false).put("isPaused", snVar.f9402b).put("isNative", this.f8564b.e());
            if (Build.VERSION.SDK_INT >= 20) {
                isScreenOn = this.f8565c.isInteractive();
            } else {
                isScreenOn = this.f8565c.isScreenOn();
            }
            put.put("isScreenOn", isScreenOn).put("appMuted", com.google.android.gms.ads.internal.n.h().b()).put("appVolume", com.google.android.gms.ads.internal.n.h().a()).put("deviceVolume", mb.a(this.f8563a.getApplicationContext()));
            Rect rect = new Rect();
            Display defaultDisplay = ((WindowManager) this.f8563a.getSystemService("window")).getDefaultDisplay();
            rect.right = defaultDisplay.getWidth();
            rect.bottom = defaultDisplay.getHeight();
            jSONObject3.put("windowVisibility", cq1Var.f6088b).put("isAttachedToWindow", z).put("viewBox", new JSONObject().put("top", cq1Var.f6089c.top).put("bottom", cq1Var.f6089c.bottom).put("left", cq1Var.f6089c.left).put("right", cq1Var.f6089c.right)).put("adBox", new JSONObject().put("top", cq1Var.f6090d.top).put("bottom", cq1Var.f6090d.bottom).put("left", cq1Var.f6090d.left).put("right", cq1Var.f6090d.right)).put("globalVisibleBox", new JSONObject().put("top", cq1Var.f6091e.top).put("bottom", cq1Var.f6091e.bottom).put("left", cq1Var.f6091e.left).put("right", cq1Var.f6091e.right)).put("globalVisibleBoxVisible", cq1Var.f6092f).put("localVisibleBox", new JSONObject().put("top", cq1Var.f6093g.top).put("bottom", cq1Var.f6093g.bottom).put("left", cq1Var.f6093g.left).put("right", cq1Var.f6093g.right)).put("localVisibleBoxVisible", cq1Var.f6094h).put("hitBox", new JSONObject().put("top", cq1Var.f6095i.top).put("bottom", cq1Var.f6095i.bottom).put("left", cq1Var.f6095i.left).put("right", cq1Var.f6095i.right)).put("screenDensity", this.f8563a.getResources().getDisplayMetrics().density);
            jSONObject3.put("isVisible", snVar.f9401a);
            if (((Boolean) mu1.e().a(aw1.d1)).booleanValue()) {
                JSONArray jSONArray2 = new JSONArray();
                List<Rect> list = cq1Var.f6097k;
                if (list != null) {
                    for (Rect rect2 : list) {
                        jSONArray2.put(new JSONObject().put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                    }
                }
                jSONObject3.put("scrollableContainerBoxes", jSONArray2);
            }
            if (!TextUtils.isEmpty(snVar.f9404d)) {
                jSONObject3.put("doneReasonCode", "u");
            }
            jSONObject = jSONObject3;
        } else {
            throw new JSONException("Active view Info cannot be null.");
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
