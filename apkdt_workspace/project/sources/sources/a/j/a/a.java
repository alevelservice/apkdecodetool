package a.j.a;

import a.j.a.b;
import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.annotation.RestrictTo;

/* compiled from: CursorAdapter.java */
/* loaded from: classes.dex */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* renamed from: e, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected boolean f370e;

    /* renamed from: f, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected boolean f371f;

    /* renamed from: g, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected Cursor f372g;

    /* renamed from: h, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected Context f373h;

    /* renamed from: i, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected int f374i;

    /* renamed from: j, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected C0009a f375j;

    /* renamed from: k, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected DataSetObserver f376k;

    /* renamed from: l, reason: collision with root package name */
    @RestrictTo({RestrictTo.a.LIBRARY_GROUP})
    protected a.j.a.b f377l;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CursorAdapter.java */
    /* renamed from: a.j.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0009a extends ContentObserver {
        C0009a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            a.this.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CursorAdapter.java */
    /* loaded from: classes.dex */
    public class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a aVar = a.this;
            aVar.f370e = true;
            aVar.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a aVar = a.this;
            aVar.f370e = false;
            aVar.notifyDataSetInvalidated();
        }
    }

    public a(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    void a(Context context, Cursor cursor, int i2) {
        if ((i2 & 1) == 1) {
            i2 |= 2;
            this.f371f = true;
        } else {
            this.f371f = false;
        }
        boolean z = cursor != null;
        this.f372g = cursor;
        this.f370e = z;
        this.f373h = context;
        this.f374i = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i2 & 2) == 2) {
            this.f375j = new C0009a();
            this.f376k = new b();
        } else {
            this.f375j = null;
            this.f376k = null;
        }
        if (z) {
            C0009a c0009a = this.f375j;
            if (c0009a != null) {
                cursor.registerContentObserver(c0009a);
            }
            DataSetObserver dataSetObserver = this.f376k;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    public abstract void a(View view, Context context, Cursor cursor);

    public abstract View b(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // a.j.a.b.a
    public abstract CharSequence b(Cursor cursor);

    protected void b() {
        Cursor cursor;
        if (!this.f371f || (cursor = this.f372g) == null || cursor.isClosed()) {
            return;
        }
        this.f370e = this.f372g.requery();
    }

    public Cursor c(Cursor cursor) {
        Cursor cursor2 = this.f372g;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0009a c0009a = this.f375j;
            if (c0009a != null) {
                cursor2.unregisterContentObserver(c0009a);
            }
            DataSetObserver dataSetObserver = this.f376k;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f372g = cursor;
        if (cursor != null) {
            C0009a c0009a2 = this.f375j;
            if (c0009a2 != null) {
                cursor.registerContentObserver(c0009a2);
            }
            DataSetObserver dataSetObserver2 = this.f376k;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f374i = cursor.getColumnIndexOrThrow("_id");
            this.f370e = true;
            notifyDataSetChanged();
        } else {
            this.f374i = -1;
            this.f370e = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f370e || (cursor = this.f372g) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i2, View view, ViewGroup viewGroup) {
        if (!this.f370e) {
            return null;
        }
        this.f372g.moveToPosition(i2);
        if (view == null) {
            view = a(this.f373h, this.f372g, viewGroup);
        }
        a(view, this.f373h, this.f372g);
        return view;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f377l == null) {
            this.f377l = new a.j.a.b(this);
        }
        return this.f377l;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i2) {
        Cursor cursor;
        if (!this.f370e || (cursor = this.f372g) == null) {
            return null;
        }
        cursor.moveToPosition(i2);
        return this.f372g;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        Cursor cursor;
        if (this.f370e && (cursor = this.f372g) != null && cursor.moveToPosition(i2)) {
            return this.f372g.getLong(this.f374i);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (this.f370e) {
            if (this.f372g.moveToPosition(i2)) {
                if (view == null) {
                    view = b(this.f373h, this.f372g, viewGroup);
                }
                a(view, this.f373h, this.f372g);
                return view;
            }
            throw new IllegalStateException("couldn't move cursor to position " + i2);
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    @Override // a.j.a.b.a
    public Cursor a() {
        return this.f372g;
    }

    @Override // a.j.a.b.a
    public void a(Cursor cursor) {
        Cursor c2 = c(cursor);
        if (c2 != null) {
            c2.close();
        }
    }
}
