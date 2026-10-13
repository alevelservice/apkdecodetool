package androidx.databinding;

import androidx.annotation.Nullable;
import java.io.Serializable;

/* compiled from: ObservableField.java */
/* loaded from: classes.dex */
public class j<T> extends b implements Serializable {
    static final long serialVersionUID = 1;
    private T mValue;

    public j(T t) {
        this.mValue = t;
    }

    @Nullable
    public T get() {
        return this.mValue;
    }

    public void set(T t) {
        if (t != this.mValue) {
            this.mValue = t;
            notifyChange();
        }
    }

    public j() {
    }

    public j(i... iVarArr) {
        super(iVarArr);
    }
}
