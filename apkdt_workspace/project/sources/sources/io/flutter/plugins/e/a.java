package io.flutter.plugins.e;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.util.Base64;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.j;
import g.a.c.a.k;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: MethodCallHandlerImpl.java */
/* loaded from: classes2.dex */
class a implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private final SharedPreferences f19362e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MethodCallHandlerImpl.java */
    /* renamed from: io.flutter.plugins.e.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class AsyncTaskC0244a extends AsyncTask<Void, Void, Boolean> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ SharedPreferences.Editor f19363a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ k.d f19364b;

        AsyncTaskC0244a(a aVar, SharedPreferences.Editor editor, k.d dVar) {
            this.f19363a = editor;
            this.f19364b = dVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean doInBackground(Void... voidArr) {
            return Boolean.valueOf(this.f19363a.commit());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Boolean bool) {
            this.f19364b.a(bool);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context) {
        this.f19362e = context.getSharedPreferences("FlutterSharedPreferences", 0);
    }

    private void a(SharedPreferences.Editor editor, k.d dVar) {
        new AsyncTaskC0244a(this, editor, dVar).execute(new Void[0]);
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        String str = (String) jVar.a("key");
        try {
            String str2 = jVar.f18223a;
            char c2 = 65535;
            switch (str2.hashCode()) {
                case -1354815177:
                    if (str2.equals("commit")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -1249367445:
                    if (str2.equals("getAll")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case -1096934831:
                    if (str2.equals("setStringList")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -934610812:
                    if (str2.equals("remove")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case -905809875:
                    if (str2.equals("setInt")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 94746189:
                    if (str2.equals("clear")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 155439827:
                    if (str2.equals("setDouble")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 589412115:
                    if (str2.equals("setString")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 1984457324:
                    if (str2.equals("setBool")) {
                        c2 = 0;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    a(this.f19362e.edit().putBoolean(str, ((Boolean) jVar.a(HummerConstants.VALUE)).booleanValue()), dVar);
                    return;
                case 1:
                    String d2 = Double.toString(((Number) jVar.a(HummerConstants.VALUE)).doubleValue());
                    a(this.f19362e.edit().putString(str, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu" + d2), dVar);
                    return;
                case 2:
                    Number number = (Number) jVar.a(HummerConstants.VALUE);
                    if (number instanceof BigInteger) {
                        a(this.f19362e.edit().putString(str, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy" + ((BigInteger) number).toString(36)), dVar);
                        return;
                    }
                    a(this.f19362e.edit().putLong(str, number.longValue()), dVar);
                    return;
                case 3:
                    String str3 = (String) jVar.a(HummerConstants.VALUE);
                    if (!str3.startsWith("VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu") && !str3.startsWith("VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy")) {
                        a(this.f19362e.edit().putString(str, str3), dVar);
                        return;
                    }
                    dVar.a("StorageError", "This string cannot be stored as it clashes with special identifier prefixes.", null);
                    return;
                case 4:
                    List<String> list = (List) jVar.a(HummerConstants.VALUE);
                    a(this.f19362e.edit().putString(str, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu" + a(list)), dVar);
                    return;
                case 5:
                    dVar.a(true);
                    return;
                case 6:
                    dVar.a(a());
                    return;
                case 7:
                    a(this.f19362e.edit().remove(str), dVar);
                    return;
                case '\b':
                    Set<String> keySet = a().keySet();
                    SharedPreferences.Editor edit = this.f19362e.edit();
                    Iterator<String> it = keySet.iterator();
                    while (it.hasNext()) {
                        edit.remove(it.next());
                    }
                    a(edit, dVar);
                    return;
                default:
                    dVar.a();
                    return;
            }
        } catch (IOException e2) {
            dVar.a("IOException encountered", jVar.f18223a, e2);
        }
    }

    private List<String> a(String str) {
        ObjectInputStream objectInputStream;
        ObjectInputStream objectInputStream2 = null;
        try {
            try {
                objectInputStream = new ObjectInputStream(new ByteArrayInputStream(Base64.decode(str, 0)));
            } catch (Throwable th) {
                th = th;
            }
        } catch (ClassNotFoundException e2) {
            e = e2;
        }
        try {
            List<String> list = (List) objectInputStream.readObject();
            objectInputStream.close();
            return list;
        } catch (ClassNotFoundException e3) {
            e = e3;
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            objectInputStream2 = objectInputStream;
            if (objectInputStream2 != null) {
                objectInputStream2.close();
            }
            throw th;
        }
    }

    private String a(List<String> list) {
        ByteArrayOutputStream byteArrayOutputStream;
        ObjectOutputStream objectOutputStream;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
        } catch (Throwable th) {
            th = th;
        }
        try {
            objectOutputStream.writeObject(list);
            objectOutputStream.flush();
            String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            objectOutputStream.close();
            return encodeToString;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            if (objectOutputStream2 != null) {
                objectOutputStream2.close();
            }
            throw th;
        }
    }

    private Map<String, Object> a() {
        Object obj;
        Map<String, ?> all = this.f19362e.getAll();
        HashMap hashMap = new HashMap();
        for (String str : all.keySet()) {
            if (str.startsWith("flutter.")) {
                Object obj2 = all.get(str);
                if (obj2 instanceof String) {
                    String str2 = (String) obj2;
                    if (str2.startsWith("VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu")) {
                        obj2 = a(str2.substring(40));
                    } else if (str2.startsWith("VGhpcyBpcyB0aGUgcHJlZml4IGZvciBCaWdJbnRlZ2Vy")) {
                        obj = new BigInteger(str2.substring(44), 36);
                        obj2 = obj;
                    } else if (str2.startsWith("VGhpcyBpcyB0aGUgcHJlZml4IGZvciBEb3VibGUu")) {
                        obj2 = Double.valueOf(str2.substring(40));
                    }
                    hashMap.put(str, obj2);
                } else {
                    if (obj2 instanceof Set) {
                        ArrayList arrayList = new ArrayList((Set) obj2);
                        obj = arrayList;
                        if (!this.f19362e.edit().remove(str).putString(str, "VGhpcyBpcyB0aGUgcHJlZml4IGZvciBhIGxpc3Qu" + a(arrayList)).commit()) {
                            throw new IOException("Could not migrate set to list");
                        }
                        obj2 = obj;
                    }
                    hashMap.put(str, obj2);
                }
            }
        }
        return hashMap;
    }
}
