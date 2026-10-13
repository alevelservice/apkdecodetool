package b.a.a;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: ReferralData.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private String f3102a;

    /* renamed from: b, reason: collision with root package name */
    private Long f3103b;

    /* renamed from: c, reason: collision with root package name */
    private Long f3104c;

    public d(String str, Long l2, Long l3) {
        this.f3102a = str;
        this.f3103b = l2;
        this.f3104c = l3;
    }

    public Long a() {
        return this.f3103b;
    }

    public Long b() {
        return this.f3104c;
    }

    public String c() {
        return this.f3102a;
    }

    public String d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("uri", c());
            jSONObject.put("clickTime", a());
            jSONObject.put("InstallTime", b());
            return jSONObject.toString();
        } catch (JSONException e2) {
            throw e2;
        }
    }
}
