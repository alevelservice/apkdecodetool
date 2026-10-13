package androidx.media;

import android.media.AudioAttributes;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImplApi21;

@RequiresApi(26)
@RestrictTo({RestrictTo.a.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class AudioAttributesImplApi26 extends AudioAttributesImplApi21 {

    /* loaded from: classes.dex */
    static class a extends AudioAttributesImplApi21.a {
        @Override // androidx.media.AudioAttributesImplApi21.a, androidx.media.a.InterfaceC0042a
        public androidx.media.a a() {
            return new AudioAttributesImplApi26(this.f2374a.build());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi26() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AudioAttributesImplApi26(AudioAttributes audioAttributes) {
        super(audioAttributes, -1);
    }
}
