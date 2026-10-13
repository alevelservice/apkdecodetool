package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;

/* compiled from: Person.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    CharSequence f1772a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    IconCompat f1773b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    String f1774c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    String f1775d;

    /* renamed from: e, reason: collision with root package name */
    boolean f1776e;

    /* renamed from: f, reason: collision with root package name */
    boolean f1777f;

    /* compiled from: Person.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        CharSequence f1778a;

        /* renamed from: b, reason: collision with root package name */
        @Nullable
        IconCompat f1779b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        String f1780c;

        /* renamed from: d, reason: collision with root package name */
        @Nullable
        String f1781d;

        /* renamed from: e, reason: collision with root package name */
        boolean f1782e;

        /* renamed from: f, reason: collision with root package name */
        boolean f1783f;

        @NonNull
        public a a(@Nullable CharSequence charSequence) {
            this.f1778a = charSequence;
            return this;
        }

        @NonNull
        public a b(@Nullable String str) {
            this.f1780c = str;
            return this;
        }

        @NonNull
        public a a(@Nullable IconCompat iconCompat) {
            this.f1779b = iconCompat;
            return this;
        }

        @NonNull
        public a b(boolean z) {
            this.f1783f = z;
            return this;
        }

        @NonNull
        public a a(@Nullable String str) {
            this.f1781d = str;
            return this;
        }

        @NonNull
        public a a(boolean z) {
            this.f1782e = z;
            return this;
        }

        @NonNull
        public k a() {
            return new k(this);
        }
    }

    k(a aVar) {
        this.f1772a = aVar.f1778a;
        this.f1773b = aVar.f1779b;
        this.f1774c = aVar.f1780c;
        this.f1775d = aVar.f1781d;
        this.f1776e = aVar.f1782e;
        this.f1777f = aVar.f1783f;
    }

    @Nullable
    public IconCompat a() {
        return this.f1773b;
    }

    @Nullable
    public String b() {
        return this.f1775d;
    }

    @Nullable
    public CharSequence c() {
        return this.f1772a;
    }

    @Nullable
    public String d() {
        return this.f1774c;
    }

    public boolean e() {
        return this.f1776e;
    }

    public boolean f() {
        return this.f1777f;
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public Person g() {
        return new Person.Builder().setName(c()).setIcon(a() != null ? a().g() : null).setUri(d()).setKey(b()).setBot(e()).setImportant(f()).build();
    }

    @NonNull
    public Bundle h() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f1772a);
        IconCompat iconCompat = this.f1773b;
        bundle.putBundle("icon", iconCompat != null ? iconCompat.f() : null);
        bundle.putString("uri", this.f1774c);
        bundle.putString("key", this.f1775d);
        bundle.putBoolean("isBot", this.f1776e);
        bundle.putBoolean("isImportant", this.f1777f);
        return bundle;
    }
}
