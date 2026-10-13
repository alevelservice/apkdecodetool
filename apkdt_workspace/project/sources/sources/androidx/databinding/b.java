package androidx.databinding;

import androidx.databinding.i;

/* compiled from: BaseObservableField.java */
/* loaded from: classes.dex */
abstract class b extends androidx.databinding.a {

    /* compiled from: BaseObservableField.java */
    /* loaded from: classes.dex */
    class a extends i.a {
        a() {
        }

        @Override // androidx.databinding.i.a
        public void a(i iVar, int i2) {
            b.this.notifyChange();
        }
    }

    public b() {
    }

    public b(i... iVarArr) {
        if (iVarArr == null || iVarArr.length == 0) {
            return;
        }
        a aVar = new a();
        for (i iVar : iVarArr) {
            iVar.addOnPropertyChangedCallback(aVar);
        }
    }
}
