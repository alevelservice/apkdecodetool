package androidx.transition;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* compiled from: TransitionValues.java */
/* loaded from: classes.dex */
public class m {

    /* renamed from: b, reason: collision with root package name */
    public View f2983b;

    /* renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f2982a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    final ArrayList<Transition> f2984c = new ArrayList<>();

    public boolean equals(Object obj) {
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return this.f2983b == mVar.f2983b && this.f2982a.equals(mVar.f2982a);
    }

    public int hashCode() {
        return (this.f2983b.hashCode() * 31) + this.f2982a.hashCode();
    }

    public String toString() {
        String str = (("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n") + "    view = " + this.f2983b + "\n") + "    values:";
        for (String str2 : this.f2982a.keySet()) {
            str = str + "    " + str2 + ": " + this.f2982a.get(str2) + "\n";
        }
        return str;
    }
}
