package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Method;

/* compiled from: VersionedParcelParcel.java */
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
class c extends b {

    /* renamed from: d, reason: collision with root package name */
    private final SparseIntArray f3019d;

    /* renamed from: e, reason: collision with root package name */
    private final Parcel f3020e;

    /* renamed from: f, reason: collision with root package name */
    private final int f3021f;

    /* renamed from: g, reason: collision with root package name */
    private final int f3022g;

    /* renamed from: h, reason: collision with root package name */
    private final String f3023h;

    /* renamed from: i, reason: collision with root package name */
    private int f3024i;

    /* renamed from: j, reason: collision with root package name */
    private int f3025j;

    /* renamed from: k, reason: collision with root package name */
    private int f3026k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new a.e.a(), new a.e.a(), new a.e.a());
    }

    @Override // androidx.versionedparcelable.b
    public boolean a(int i2) {
        while (this.f3025j < this.f3022g) {
            int i3 = this.f3026k;
            if (i3 == i2) {
                return true;
            }
            if (String.valueOf(i3).compareTo(String.valueOf(i2)) > 0) {
                return false;
            }
            this.f3020e.setDataPosition(this.f3025j);
            int readInt = this.f3020e.readInt();
            this.f3026k = this.f3020e.readInt();
            this.f3025j += readInt;
        }
        return this.f3026k == i2;
    }

    @Override // androidx.versionedparcelable.b
    public void b(int i2) {
        a();
        this.f3024i = i2;
        this.f3019d.put(i2, this.f3020e.dataPosition());
        c(0);
        c(i2);
    }

    @Override // androidx.versionedparcelable.b
    public void c(int i2) {
        this.f3020e.writeInt(i2);
    }

    @Override // androidx.versionedparcelable.b
    public boolean d() {
        return this.f3020e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.b
    public byte[] e() {
        int readInt = this.f3020e.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        this.f3020e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.b
    protected CharSequence f() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f3020e);
    }

    @Override // androidx.versionedparcelable.b
    public int g() {
        return this.f3020e.readInt();
    }

    @Override // androidx.versionedparcelable.b
    public <T extends Parcelable> T h() {
        return (T) this.f3020e.readParcelable(c.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.b
    public String i() {
        return this.f3020e.readString();
    }

    private c(Parcel parcel, int i2, int i3, String str, a.e.a<String, Method> aVar, a.e.a<String, Method> aVar2, a.e.a<String, Class> aVar3) {
        super(aVar, aVar2, aVar3);
        this.f3019d = new SparseIntArray();
        this.f3024i = -1;
        this.f3025j = 0;
        this.f3026k = -1;
        this.f3020e = parcel;
        this.f3021f = i2;
        this.f3022g = i3;
        this.f3025j = this.f3021f;
        this.f3023h = str;
    }

    @Override // androidx.versionedparcelable.b
    protected b b() {
        Parcel parcel = this.f3020e;
        int dataPosition = parcel.dataPosition();
        int i2 = this.f3025j;
        if (i2 == this.f3021f) {
            i2 = this.f3022g;
        }
        return new c(parcel, dataPosition, i2, this.f3023h + "  ", this.f3016a, this.f3017b, this.f3018c);
    }

    @Override // androidx.versionedparcelable.b
    public void a() {
        int i2 = this.f3024i;
        if (i2 >= 0) {
            int i3 = this.f3019d.get(i2);
            int dataPosition = this.f3020e.dataPosition();
            this.f3020e.setDataPosition(i3);
            this.f3020e.writeInt(dataPosition - i3);
            this.f3020e.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.b
    public void a(byte[] bArr) {
        if (bArr != null) {
            this.f3020e.writeInt(bArr.length);
            this.f3020e.writeByteArray(bArr);
        } else {
            this.f3020e.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.b
    public void a(String str) {
        this.f3020e.writeString(str);
    }

    @Override // androidx.versionedparcelable.b
    public void a(Parcelable parcelable) {
        this.f3020e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.b
    public void a(boolean z) {
        this.f3020e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.b
    protected void a(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f3020e, 0);
    }
}
