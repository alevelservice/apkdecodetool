package android.support.v4.media;

import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesCompat;
import androidx.versionedparcelable.b;

@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
public final class AudioAttributesCompatParcelizer extends androidx.media.AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(b bVar) {
        return androidx.media.AudioAttributesCompatParcelizer.read(bVar);
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, b bVar) {
        androidx.media.AudioAttributesCompatParcelizer.write(audioAttributesCompat, bVar);
    }
}
