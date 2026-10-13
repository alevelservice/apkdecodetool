package g.a.c.a;

import androidx.annotation.Nullable;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: MethodCall.java */
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final String f18223a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18224b;

    public j(String str, Object obj) {
        this.f18223a = str;
        this.f18224b = obj;
    }

    public <T> T a() {
        return (T) this.f18224b;
    }

    public boolean b(String str) {
        Object obj = this.f18224b;
        if (obj == null) {
            return false;
        }
        if (obj instanceof Map) {
            return ((Map) obj).containsKey(str);
        }
        if (obj instanceof JSONObject) {
            return ((JSONObject) obj).has(str);
        }
        throw new ClassCastException();
    }

    @Nullable
    public <T> T a(String str) {
        Object obj = this.f18224b;
        if (obj == null) {
            return null;
        }
        if (obj instanceof Map) {
            return (T) ((Map) obj).get(str);
        }
        if (obj instanceof JSONObject) {
            return (T) ((JSONObject) obj).opt(str);
        }
        throw new ClassCastException();
    }
}
