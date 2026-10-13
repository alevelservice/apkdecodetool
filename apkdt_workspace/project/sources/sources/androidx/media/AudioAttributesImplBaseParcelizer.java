package androidx.media;

import androidx.annotation.RestrictTo;

@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(androidx.versionedparcelable.b bVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f2375a = bVar.a(audioAttributesImplBase.f2375a, 1);
        audioAttributesImplBase.f2376b = bVar.a(audioAttributesImplBase.f2376b, 2);
        audioAttributesImplBase.f2377c = bVar.a(audioAttributesImplBase.f2377c, 3);
        audioAttributesImplBase.f2378d = bVar.a(audioAttributesImplBase.f2378d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, androidx.versionedparcelable.b bVar) {
        bVar.a(false, false);
        bVar.b(audioAttributesImplBase.f2375a, 1);
        bVar.b(audioAttributesImplBase.f2376b, 2);
        bVar.b(audioAttributesImplBase.f2377c, 3);
        bVar.b(audioAttributesImplBase.f2378d, 4);
    }
}
