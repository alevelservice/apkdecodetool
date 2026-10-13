package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.a;

@RequiresApi(21)
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class AudioAttributesImplApi21 implements androidx.media.a {

    /* renamed from: a, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public AudioAttributes f2372a;

    /* renamed from: b, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
    public int f2373b;

    /* loaded from: classes.dex */
    static class a implements a.InterfaceC0042a {

        /* renamed from: a, reason: collision with root package name */
        final AudioAttributes.Builder f2374a = new AudioAttributes.Builder();

        @Override // androidx.media.a.InterfaceC0042a
        public /* bridge */ /* synthetic */ a.InterfaceC0042a a(int i2) {
            a(i2);
            return this;
        }

        @Override // androidx.media.a.InterfaceC0042a
        public androidx.media.a a() {
            return new AudioAttributesImplApi21(this.f2374a.build());
        }

        @Override // androidx.media.a.InterfaceC0042a
        public a a(int i2) {
            this.f2374a.setLegacyStreamType(i2);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi21() {
        this.f2373b = -1;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f2372a.equals(((AudioAttributesImplApi21) obj).f2372a);
        }
        return false;
    }

    public int hashCode() {
        return this.f2372a.hashCode();
    }

    public String toString() {
        return "AudioAttributesCompat: audioattributes=" + this.f2372a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi21(AudioAttributes audioAttributes) {
        this(audioAttributes, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi21(AudioAttributes audioAttributes, int i2) {
        this.f2373b = -1;
        this.f2372a = audioAttributes;
        this.f2373b = i2;
    }
}
