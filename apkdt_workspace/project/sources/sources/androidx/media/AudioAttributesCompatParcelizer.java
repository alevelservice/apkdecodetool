package androidx.media;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(androidx.versionedparcelable.b bVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        audioAttributesCompat.f2370a = (a) bVar.a((androidx.versionedparcelable.b) audioAttributesCompat.f2370a, 1);
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, androidx.versionedparcelable.b bVar) {
        bVar.a(false, false);
        bVar.b(audioAttributesCompat.f2370a, 1);
    }
}
