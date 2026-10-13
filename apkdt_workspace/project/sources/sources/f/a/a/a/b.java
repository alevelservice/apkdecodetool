package f.a.a.a;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.provider.ContactsContract;
import android.text.TextUtils;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* compiled from: ContactsServicePlugin.java */
/* loaded from: classes2.dex */
public class b implements k.c, io.flutter.embedding.engine.g.a {

    /* renamed from: f, reason: collision with root package name */
    private static k f18193f;

    /* renamed from: e, reason: collision with root package name */
    private ContentResolver f18194e;

    static {
        new String[]{"contact_id", "display_name", "data1", "mimetype", "data2"};
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        k kVar = f18193f;
        if (kVar != null) {
            kVar.a((k.c) null);
            f18193f = null;
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if ("getContacts".equals(jVar.f18223a)) {
            a((String) jVar.a(H5PluginHandler.HUMMER_FOUNDATION_QUERY), dVar);
        } else {
            dVar.a();
        }
    }

    private void a(Context context, g.a.c.a.c cVar) {
        this.f18194e = context.getContentResolver();
        f18193f = new k(cVar, "flutter_contacts");
        f18193f.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ContactsServicePlugin.java */
    /* loaded from: classes2.dex */
    public class a extends AsyncTask<String, Void, ArrayList<HashMap>> {

        /* renamed from: a, reason: collision with root package name */
        private k.d f18195a;

        public a(k.d dVar) {
            this.f18195a = dVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        @TargetApi(5)
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public ArrayList<HashMap> doInBackground(String... strArr) {
            b bVar = b.this;
            ArrayList a2 = bVar.a(bVar.a(strArr[0]));
            ArrayList<HashMap> arrayList = new ArrayList<>();
            Iterator it = a2.iterator();
            while (it.hasNext()) {
                arrayList.add(((f.a.a.a.a) it.next()).a());
            }
            return arrayList;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(ArrayList<HashMap> arrayList) {
            this.f18195a.a(arrayList);
        }
    }

    private void a(String str, k.d dVar) {
        new a(dVar).execute(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Cursor a(String str) {
        return this.f18194e.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"contact_id", "display_name", "data1", "mimetype", "data2"}, "has_phone_number = '1'", null, "display_name COLLATE LOCALIZED ASC");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ArrayList<f.a.a.a.a> a(Cursor cursor) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        while (cursor != null && cursor.moveToNext()) {
            String string = cursor.getString(cursor.getColumnIndex("contact_id"));
            if (!linkedHashMap.containsKey(string)) {
                linkedHashMap.put(string, new f.a.a.a.a(string));
            }
            f.a.a.a.a aVar = (f.a.a.a.a) linkedHashMap.get(string);
            String string2 = cursor.getString(cursor.getColumnIndex("mimetype"));
            aVar.f18191b = cursor.getString(cursor.getColumnIndex("display_name"));
            if (string2.equals("vnd.android.cursor.item/phone_v2")) {
                String string3 = cursor.getString(cursor.getColumnIndex("data1"));
                int i2 = cursor.getInt(cursor.getColumnIndex("data2"));
                if (!TextUtils.isEmpty(string3)) {
                    aVar.f18192c.add(new c(c.a(i2), string3));
                }
            }
        }
        return new ArrayList<>(linkedHashMap.values());
    }
}
