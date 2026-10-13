package com.mapbox.mapboxsdk.style.types;

import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import java.util.Arrays;

@Keep
/* loaded from: classes2.dex */
public class Formatted {
    private final FormattedSection[] formattedSections;

    public Formatted(FormattedSection... formattedSectionArr) {
        this.formattedSections = formattedSectionArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Formatted.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.formattedSections, ((Formatted) obj).formattedSections);
    }

    public FormattedSection[] getFormattedSections() {
        return this.formattedSections;
    }

    public int hashCode() {
        return Arrays.hashCode(this.formattedSections);
    }

    public Object[] toArray() {
        Object[] objArr = new Object[this.formattedSections.length];
        int i2 = 0;
        while (true) {
            FormattedSection[] formattedSectionArr = this.formattedSections;
            if (i2 >= formattedSectionArr.length) {
                return objArr;
            }
            objArr[i2] = formattedSectionArr[i2].toArray();
            i2++;
        }
    }

    public String toString() {
        return "Formatted{formattedSections=" + Arrays.toString(this.formattedSections) + '}';
    }
}
