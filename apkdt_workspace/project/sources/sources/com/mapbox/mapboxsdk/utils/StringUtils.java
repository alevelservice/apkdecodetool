package com.mapbox.mapboxsdk.utils;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import java.text.Normalizer;

@Keep
/* loaded from: classes2.dex */
class StringUtils {
    StringUtils() {
    }

    @NonNull
    @Keep
    static String unaccent(@NonNull String str) {
        return Normalizer.normalize(str, Normalizer.Form.NFD).replaceAll("(\\p{InCombiningDiacriticalMarks}|\\p{InCombiningDiacriticalMarksForSymbols}|\\p{InCombiningDiacriticalMarksSupplement})+", "");
    }
}
