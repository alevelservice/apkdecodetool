package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.media.a;
import java.util.Arrays;

@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class AudioAttributesImplBase implements androidx.media.a {

    /* renamed from: a, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int f2375a;

    /* renamed from: b, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int f2376b;

    /* renamed from: c, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int f2377c;

    /* renamed from: d, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int f2378d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a implements a.InterfaceC0042a {

        /* renamed from: a, reason: collision with root package name */
        private int f2379a = 0;

        /* renamed from: b, reason: collision with root package name */
        private int f2380b = 0;

        /* renamed from: c, reason: collision with root package name */
        private int f2381c = 0;

        /* renamed from: d, reason: collision with root package name */
        private int f2382d = -1;

        @Override // androidx.media.a.InterfaceC0042a
        public /* bridge */ /* synthetic */ a.InterfaceC0042a a(int i2) {
            a(i2);
            return this;
        }

        @Override // androidx.media.a.InterfaceC0042a
        public androidx.media.a a() {
            return new AudioAttributesImplBase(this.f2380b, this.f2381c, this.f2379a, this.f2382d);
        }

        @Override // androidx.media.a.InterfaceC0042a
        public a a(int i2) {
            if (i2 != 10) {
                this.f2382d = i2;
                return this;
            }
            throw new IllegalArgumentException("STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplBase() {
        this.f2375a = 0;
        this.f2376b = 0;
        this.f2377c = 0;
        this.f2378d = -1;
    }

    public int a() {
        return this.f2376b;
    }

    public int b() {
        int i2 = this.f2377c;
        int c2 = c();
        if (c2 == 6) {
            i2 |= 4;
        } else if (c2 == 7) {
            i2 |= 1;
        }
        return i2 & 273;
    }

    public int c() {
        int i2 = this.f2378d;
        return i2 != -1 ? i2 : AudioAttributesCompat.a(false, this.f2377c, this.f2375a);
    }

    public int d() {
        return this.f2375a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f2376b == audioAttributesImplBase.a() && this.f2377c == audioAttributesImplBase.b() && this.f2375a == audioAttributesImplBase.d() && this.f2378d == audioAttributesImplBase.f2378d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2376b), Integer.valueOf(this.f2377c), Integer.valueOf(this.f2375a), Integer.valueOf(this.f2378d)});
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f2378d != -1) {
            sb.append(" stream=");
            sb.append(this.f2378d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        sb.append(AudioAttributesCompat.a(this.f2375a));
        sb.append(" content=");
        sb.append(this.f2376b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f2377c).toUpperCase());
        return sb.toString();
    }

    AudioAttributesImplBase(int i2, int i3, int i4, int i5) {
        this.f2375a = 0;
        this.f2376b = 0;
        this.f2377c = 0;
        this.f2378d = -1;
        this.f2376b = i2;
        this.f2377c = i3;
        this.f2375a = i4;
        this.f2378d = i5;
    }
}
