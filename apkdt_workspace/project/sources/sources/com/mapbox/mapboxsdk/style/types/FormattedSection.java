package com.mapbox.mapboxsdk.style.types;

import androidx.annotation.ColorInt;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mapbox.mapboxsdk.utils.b;
import java.util.Arrays;
import java.util.HashMap;

@Keep
/* loaded from: classes2.dex */
public class FormattedSection {
    private Number fontScale;
    private String[] fontStack;
    private String text;
    private String textColor;

    public FormattedSection(@NonNull String str) {
        this(str, null, null, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || FormattedSection.class != obj.getClass()) {
            return false;
        }
        FormattedSection formattedSection = (FormattedSection) obj;
        String str = this.text;
        if (str == null ? formattedSection.text != null : !str.equals(formattedSection.text)) {
            return false;
        }
        Number number = this.fontScale;
        if (number == null ? formattedSection.fontScale != null : !number.equals(formattedSection.fontScale)) {
            return false;
        }
        if (!Arrays.equals(this.fontStack, formattedSection.fontStack)) {
            return false;
        }
        String str2 = this.textColor;
        String str3 = formattedSection.textColor;
        return str2 != null ? str2.equals(str3) : str3 == null;
    }

    @Nullable
    public Number getFontScale() {
        return this.fontScale;
    }

    @Nullable
    public String[] getFontStack() {
        return this.fontStack;
    }

    @NonNull
    public String getText() {
        return this.text;
    }

    public String getTextColor() {
        return this.textColor;
    }

    public int hashCode() {
        String str = this.text;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Number number = this.fontScale;
        int hashCode2 = (((hashCode + (number != null ? number.hashCode() : 0)) * 31) + Arrays.hashCode(this.fontStack)) * 31;
        String str2 = this.textColor;
        return hashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public void setFontScale(@Nullable Number number) {
        this.fontScale = number;
    }

    public void setFontStack(@Nullable String[] strArr) {
        this.fontStack = strArr;
    }

    public void setTextColor(@Nullable String str) {
        this.textColor = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object[] toArray() {
        HashMap hashMap = new HashMap();
        hashMap.put("font-scale", this.fontScale);
        hashMap.put("text-font", this.fontStack);
        hashMap.put("text-color", this.textColor);
        return new Object[]{this.text, hashMap};
    }

    public String toString() {
        return "FormattedSection{text='" + this.text + "', fontScale=" + this.fontScale + ", fontStack=" + Arrays.toString(this.fontStack) + ", textColor='" + this.textColor + "'}";
    }

    public FormattedSection(@NonNull String str, @Nullable Number number, @Nullable String[] strArr, @Nullable String str2) {
        this.text = str;
        this.fontScale = number;
        this.fontStack = strArr;
        this.textColor = str2;
    }

    public void setTextColor(@ColorInt int i2) {
        this.textColor = b.b(i2);
    }

    void setTextColor(@NonNull Object obj) {
        setTextColor((String) obj);
    }

    @Deprecated
    public FormattedSection(@NonNull String str, @Nullable Number number, @Nullable String[] strArr) {
        this(str, number, strArr, null);
    }

    @Deprecated
    public FormattedSection(@NonNull String str, @Nullable Number number) {
        this(str, number, null, null);
    }

    @Deprecated
    public FormattedSection(@NonNull String str, @Nullable String[] strArr) {
        this(str, null, strArr, null);
    }
}
