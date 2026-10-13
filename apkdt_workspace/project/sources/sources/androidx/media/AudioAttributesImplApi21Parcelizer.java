package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(androidx.versionedparcelable.b bVar) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f2372a = (AudioAttributes) bVar.a((androidx.versionedparcelable.b) audioAttributesImplApi21.f2372a, 1);
        audioAttributesImplApi21.f2373b = bVar.a(audioAttributesImplApi21.f2373b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, androidx.versionedparcelable.b bVar) {
        bVar.a(false, false);
        bVar.b(audioAttributesImplApi21.f2372a, 1);
        bVar.b(audioAttributesImplApi21.f2373b, 2);
    }
}
