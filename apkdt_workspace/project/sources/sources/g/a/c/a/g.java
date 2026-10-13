package g.a.c.a;

import java.nio.ByteBuffer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: JSONMethodCodec.java */
/* loaded from: classes2.dex */
public final class g implements l {

    /* renamed from: a, reason: collision with root package name */
    public static final g f18222a = new g();

    private g() {
    }

    @Override // g.a.c.a.l
    public ByteBuffer a(j jVar) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("method", jVar.f18223a);
            jSONObject.put("args", h.a(jVar.f18224b));
            return f.f18221a.a(jSONObject);
        } catch (JSONException e2) {
            throw new IllegalArgumentException("Invalid JSON", e2);
        }
    }

    @Override // g.a.c.a.l
    public Object b(ByteBuffer byteBuffer) {
        try {
            Object a2 = f.f18221a.a(byteBuffer);
            if (a2 instanceof JSONArray) {
                JSONArray jSONArray = (JSONArray) a2;
                if (jSONArray.length() == 1) {
                    return b(jSONArray.opt(0));
                }
                if (jSONArray.length() == 3) {
                    Object obj = jSONArray.get(0);
                    Object b2 = b(jSONArray.opt(1));
                    Object b3 = b(jSONArray.opt(2));
                    if ((obj instanceof String) && (b2 == null || (b2 instanceof String))) {
                        throw new e((String) obj, (String) b2, b3);
                    }
                }
            }
            throw new IllegalArgumentException("Invalid envelope: " + a2);
        } catch (JSONException e2) {
            throw new IllegalArgumentException("Invalid JSON", e2);
        }
    }

    @Override // g.a.c.a.l
    public j a(ByteBuffer byteBuffer) {
        try {
            Object a2 = f.f18221a.a(byteBuffer);
            if (a2 instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) a2;
                Object obj = jSONObject.get("method");
                Object b2 = b(jSONObject.opt("args"));
                if (obj instanceof String) {
                    return new j((String) obj, b2);
                }
            }
            throw new IllegalArgumentException("Invalid method call: " + a2);
        } catch (JSONException e2) {
            throw new IllegalArgumentException("Invalid JSON", e2);
        }
    }

    Object b(Object obj) {
        if (obj == JSONObject.NULL) {
            return null;
        }
        return obj;
    }

    @Override // g.a.c.a.l
    public ByteBuffer a(Object obj) {
        return f.f18221a.a(new JSONArray().put(h.a(obj)));
    }

    @Override // g.a.c.a.l
    public ByteBuffer a(String str, String str2, Object obj) {
        return f.f18221a.a(new JSONArray().put(str).put(h.a(str2)).put(h.a(obj)));
    }

    @Override // g.a.c.a.l
    public ByteBuffer a(String str, String str2, Object obj, String str3) {
        return f.f18221a.a(new JSONArray().put(str).put(h.a(str2)).put(h.a(obj)).put(h.a(str3)));
    }
}
