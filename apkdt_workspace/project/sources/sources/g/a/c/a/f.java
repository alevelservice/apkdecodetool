package g.a.c.a;

import java.nio.ByteBuffer;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

/* compiled from: JSONMessageCodec.java */
/* loaded from: classes2.dex */
public final class f implements i<Object> {

    /* renamed from: a, reason: collision with root package name */
    public static final f f18221a = new f();

    private f() {
    }

    @Override // g.a.c.a.i
    public ByteBuffer a(Object obj) {
        if (obj == null) {
            return null;
        }
        Object a2 = h.a(obj);
        if (a2 instanceof String) {
            return p.f18240b.a(JSONObject.quote((String) a2));
        }
        return p.f18240b.a(a2.toString());
    }

    @Override // g.a.c.a.i
    public Object a(ByteBuffer byteBuffer) {
        if (byteBuffer == null) {
            return null;
        }
        try {
            JSONTokener jSONTokener = new JSONTokener(p.f18240b.a(byteBuffer));
            Object nextValue = jSONTokener.nextValue();
            if (jSONTokener.more()) {
                throw new IllegalArgumentException("Invalid JSON");
            }
            return nextValue;
        } catch (JSONException e2) {
            throw new IllegalArgumentException("Invalid JSON", e2);
        }
    }
}
