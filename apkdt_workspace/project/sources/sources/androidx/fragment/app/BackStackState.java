package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.j;
import androidx.lifecycle.e;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class BackStackState implements Parcelable {
    public static final Parcelable.Creator<BackStackState> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    final int[] f2126e;

    /* renamed from: f, reason: collision with root package name */
    final ArrayList<String> f2127f;

    /* renamed from: g, reason: collision with root package name */
    final int[] f2128g;

    /* renamed from: h, reason: collision with root package name */
    final int[] f2129h;

    /* renamed from: i, reason: collision with root package name */
    final int f2130i;

    /* renamed from: j, reason: collision with root package name */
    final int f2131j;

    /* renamed from: k, reason: collision with root package name */
    final String f2132k;

    /* renamed from: l, reason: collision with root package name */
    final int f2133l;
    final int m;
    final CharSequence n;
    final int o;
    final CharSequence p;
    final ArrayList<String> q;
    final ArrayList<String> r;
    final boolean s;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<BackStackState> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState createFromParcel(Parcel parcel) {
            return new BackStackState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BackStackState[] newArray(int i2) {
            return new BackStackState[i2];
        }
    }

    public BackStackState(androidx.fragment.app.a aVar) {
        int size = aVar.f2241a.size();
        this.f2126e = new int[size * 5];
        if (aVar.f2248h) {
            this.f2127f = new ArrayList<>(size);
            this.f2128g = new int[size];
            this.f2129h = new int[size];
            int i2 = 0;
            int i3 = 0;
            while (i2 < size) {
                j.a aVar2 = aVar.f2241a.get(i2);
                int i4 = i3 + 1;
                this.f2126e[i3] = aVar2.f2253a;
                ArrayList<String> arrayList = this.f2127f;
                Fragment fragment = aVar2.f2254b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f2126e;
                int i5 = i4 + 1;
                iArr[i4] = aVar2.f2255c;
                int i6 = i5 + 1;
                iArr[i5] = aVar2.f2256d;
                int i7 = i6 + 1;
                iArr[i6] = aVar2.f2257e;
                iArr[i7] = aVar2.f2258f;
                this.f2128g[i2] = aVar2.f2259g.ordinal();
                this.f2129h[i2] = aVar2.f2260h.ordinal();
                i2++;
                i3 = i7 + 1;
            }
            this.f2130i = aVar.f2246f;
            this.f2131j = aVar.f2247g;
            this.f2132k = aVar.f2250j;
            this.f2133l = aVar.u;
            this.m = aVar.f2251k;
            this.n = aVar.f2252l;
            this.o = aVar.m;
            this.p = aVar.n;
            this.q = aVar.o;
            this.r = aVar.p;
            this.s = aVar.q;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    public androidx.fragment.app.a a(h hVar) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(hVar);
        int i2 = 0;
        int i3 = 0;
        while (i2 < this.f2126e.length) {
            j.a aVar2 = new j.a();
            int i4 = i2 + 1;
            aVar2.f2253a = this.f2126e[i2];
            if (h.L) {
                String str = "Instantiate " + aVar + " op #" + i3 + " base fragment #" + this.f2126e[i4];
            }
            String str2 = this.f2127f.get(i3);
            if (str2 != null) {
                aVar2.f2254b = hVar.f2201k.get(str2);
            } else {
                aVar2.f2254b = null;
            }
            aVar2.f2259g = e.b.values()[this.f2128g[i3]];
            aVar2.f2260h = e.b.values()[this.f2129h[i3]];
            int[] iArr = this.f2126e;
            int i5 = i4 + 1;
            aVar2.f2255c = iArr[i4];
            int i6 = i5 + 1;
            aVar2.f2256d = iArr[i5];
            int i7 = i6 + 1;
            aVar2.f2257e = iArr[i6];
            aVar2.f2258f = iArr[i7];
            aVar.f2242b = aVar2.f2255c;
            aVar.f2243c = aVar2.f2256d;
            aVar.f2244d = aVar2.f2257e;
            aVar.f2245e = aVar2.f2258f;
            aVar.a(aVar2);
            i3++;
            i2 = i7 + 1;
        }
        aVar.f2246f = this.f2130i;
        aVar.f2247g = this.f2131j;
        aVar.f2250j = this.f2132k;
        aVar.u = this.f2133l;
        aVar.f2248h = true;
        aVar.f2251k = this.m;
        aVar.f2252l = this.n;
        aVar.m = this.o;
        aVar.n = this.p;
        aVar.o = this.q;
        aVar.p = this.r;
        aVar.q = this.s;
        aVar.a(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeIntArray(this.f2126e);
        parcel.writeStringList(this.f2127f);
        parcel.writeIntArray(this.f2128g);
        parcel.writeIntArray(this.f2129h);
        parcel.writeInt(this.f2130i);
        parcel.writeInt(this.f2131j);
        parcel.writeString(this.f2132k);
        parcel.writeInt(this.f2133l);
        parcel.writeInt(this.m);
        TextUtils.writeToParcel(this.n, parcel, 0);
        parcel.writeInt(this.o);
        TextUtils.writeToParcel(this.p, parcel, 0);
        parcel.writeStringList(this.q);
        parcel.writeStringList(this.r);
        parcel.writeInt(this.s ? 1 : 0);
    }

    public BackStackState(Parcel parcel) {
        this.f2126e = parcel.createIntArray();
        this.f2127f = parcel.createStringArrayList();
        this.f2128g = parcel.createIntArray();
        this.f2129h = parcel.createIntArray();
        this.f2130i = parcel.readInt();
        this.f2131j = parcel.readInt();
        this.f2132k = parcel.readString();
        this.f2133l = parcel.readInt();
        this.m = parcel.readInt();
        this.n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.o = parcel.readInt();
        this.p = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.q = parcel.createStringArrayList();
        this.r = parcel.createStringArrayList();
        this.s = parcel.readInt() != 0;
    }
}
