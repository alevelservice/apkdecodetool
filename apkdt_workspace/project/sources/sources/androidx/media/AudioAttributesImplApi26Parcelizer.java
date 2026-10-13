package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(androidx.versionedparcelable.b bVar) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.f2372a = (AudioAttributes) bVar.a((androidx.versionedparcelable.b) audioAttributesImplApi26.f2372a, 1);
        audioAttributesImplApi26.f2373b = bVar.a(audioAttributesImplApi26.f2373b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, androidx.versionedparcelable.b bVar) {
        bVar.a(false, false);
        bVar.b(audioAttributesImplApi26.f2372a, 1);
        bVar.b(audioAttributesImplApi26.f2373b, 2);
    }
}
