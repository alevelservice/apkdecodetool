package top.xy12.codetransporter.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.gson.Gson;

/* loaded from: classes.dex */
public class SharedPreferencesUtil {
    private static SharedPreferencesUtil instance;
    private SharedPreferences sharedPreferences;

    public static SharedPreferencesUtil getInstance(Context context) {
        if (instance == null) {
            synchronized (SharedPreferencesUtil.class) {
                if (instance == null) {
                    instance = new SharedPreferencesUtil(context);
                }
            }
        }
        return instance;
    }

    private SharedPreferencesUtil(Context context) {
        this.sharedPreferences = context.getSharedPreferences("config", 0);
    }

    public void put(String str, String str2) {
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        edit.putString(str, str2);
        edit.apply();
    }

    public void put(String str, boolean z) {
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        edit.putBoolean(str, z);
        edit.apply();
    }

    public void put(String str, int i) {
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        edit.putInt(str, i);
        edit.apply();
    }

    public void put(String str, long j) {
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        edit.putLong(str, j);
        edit.apply();
    }

    public void put(String str, float f) {
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        edit.putFloat(str, f);
        edit.apply();
    }

    public void put(String str, Object obj) {
        put(str, new Gson().toJson(obj));
    }

    public String get(String str, String str2) {
        return this.sharedPreferences.getString(str, str2);
    }

    public boolean get(String str, boolean z) {
        return this.sharedPreferences.getBoolean(str, z);
    }

    public int get(String str, int i) {
        return this.sharedPreferences.getInt(str, i);
    }

    public long get(String str, long j) {
        return this.sharedPreferences.getLong(str, j);
    }

    public float get(String str, float f) {
        return this.sharedPreferences.getFloat(str, f);
    }

    public <T> T get(String str, Class<T> cls) {
        return (T) new Gson().fromJson(this.sharedPreferences.getString(str, ""), (Class) cls);
    }

    public void remove(String str) {
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        edit.remove(str);
        edit.apply();
    }

    public void clear() {
        SharedPreferences.Editor edit = this.sharedPreferences.edit();
        edit.clear();
        edit.apply();
    }
}
