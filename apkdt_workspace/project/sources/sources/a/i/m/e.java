package a.i.m;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;

/* compiled from: Pair.java */
/* loaded from: classes.dex */
public class e<F, S> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final F f363a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final S f364b;

    public e(@Nullable F f2, @Nullable S s) {
        this.f363a = f2;
        this.f364b = s;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return d.a(eVar.f363a, this.f363a) && d.a(eVar.f364b, this.f364b);
    }

    public int hashCode() {
        F f2 = this.f363a;
        int hashCode = f2 == null ? 0 : f2.hashCode();
        S s = this.f364b;
        return hashCode ^ (s != null ? s.hashCode() : 0);
    }

    @NonNull
    public String toString() {
        return "Pair{" + String.valueOf(this.f363a) + HanziToPinyin.Token.SEPARATOR + String.valueOf(this.f364b) + "}";
    }
}
