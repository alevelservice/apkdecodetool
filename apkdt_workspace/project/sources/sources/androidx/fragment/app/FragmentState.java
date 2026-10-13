package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.lifecycle.e;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    final String f2157e;

    /* renamed from: f, reason: collision with root package name */
    final String f2158f;

    /* renamed from: g, reason: collision with root package name */
    final boolean f2159g;

    /* renamed from: h, reason: collision with root package name */
    final int f2160h;

    /* renamed from: i, reason: collision with root package name */
    final int f2161i;

    /* renamed from: j, reason: collision with root package name */
    final String f2162j;

    /* renamed from: k, reason: collision with root package name */
    final boolean f2163k;

    /* renamed from: l, reason: collision with root package name */
    final boolean f2164l;
    final boolean m;
    final Bundle n;
    final boolean o;
    final int p;
    Bundle q;
    Fragment r;

    /* loaded from: classes.dex */
    static class a implements Parcelable.Creator<FragmentState> {
        a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public FragmentState[] newArray(int i2) {
            return new FragmentState[i2];
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentState(Fragment fragment) {
        this.f2157e = fragment.getClass().getName();
        this.f2158f = fragment.mWho;
        this.f2159g = fragment.mFromLayout;
        this.f2160h = fragment.mFragmentId;
        this.f2161i = fragment.mContainerId;
        this.f2162j = fragment.mTag;
        this.f2163k = fragment.mRetainInstance;
        this.f2164l = fragment.mRemoving;
        this.m = fragment.mDetached;
        this.n = fragment.mArguments;
        this.o = fragment.mHidden;
        this.p = fragment.mMaxState.ordinal();
    }

    public Fragment a(@NonNull ClassLoader classLoader, @NonNull e eVar) {
        if (this.r == null) {
            Bundle bundle = this.n;
            if (bundle != null) {
                bundle.setClassLoader(classLoader);
            }
            this.r = eVar.a(classLoader, this.f2157e);
            this.r.setArguments(this.n);
            Bundle bundle2 = this.q;
            if (bundle2 != null) {
                bundle2.setClassLoader(classLoader);
                this.r.mSavedFragmentState = this.q;
            } else {
                this.r.mSavedFragmentState = new Bundle();
            }
            Fragment fragment = this.r;
            fragment.mWho = this.f2158f;
            fragment.mFromLayout = this.f2159g;
            fragment.mRestored = true;
            fragment.mFragmentId = this.f2160h;
            fragment.mContainerId = this.f2161i;
            fragment.mTag = this.f2162j;
            fragment.mRetainInstance = this.f2163k;
            fragment.mRemoving = this.f2164l;
            fragment.mDetached = this.m;
            fragment.mHidden = this.o;
            fragment.mMaxState = e.b.values()[this.p];
            if (h.L) {
                String str = "Instantiated fragment " + this.r;
            }
        }
        return this.r;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NonNull
    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f2157e);
        sb.append(" (");
        sb.append(this.f2158f);
        sb.append(")}:");
        if (this.f2159g) {
            sb.append(" fromLayout");
        }
        if (this.f2161i != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f2161i));
        }
        String str = this.f2162j;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f2162j);
        }
        if (this.f2163k) {
            sb.append(" retainInstance");
        }
        if (this.f2164l) {
            sb.append(" removing");
        }
        if (this.m) {
            sb.append(" detached");
        }
        if (this.o) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f2157e);
        parcel.writeString(this.f2158f);
        parcel.writeInt(this.f2159g ? 1 : 0);
        parcel.writeInt(this.f2160h);
        parcel.writeInt(this.f2161i);
        parcel.writeString(this.f2162j);
        parcel.writeInt(this.f2163k ? 1 : 0);
        parcel.writeInt(this.f2164l ? 1 : 0);
        parcel.writeInt(this.m ? 1 : 0);
        parcel.writeBundle(this.n);
        parcel.writeInt(this.o ? 1 : 0);
        parcel.writeBundle(this.q);
        parcel.writeInt(this.p);
    }

    FragmentState(Parcel parcel) {
        this.f2157e = parcel.readString();
        this.f2158f = parcel.readString();
        this.f2159g = parcel.readInt() != 0;
        this.f2160h = parcel.readInt();
        this.f2161i = parcel.readInt();
        this.f2162j = parcel.readString();
        this.f2163k = parcel.readInt() != 0;
        this.f2164l = parcel.readInt() != 0;
        this.m = parcel.readInt() != 0;
        this.n = parcel.readBundle();
        this.o = parcel.readInt() != 0;
        this.q = parcel.readBundle();
        this.p = parcel.readInt();
    }
}
