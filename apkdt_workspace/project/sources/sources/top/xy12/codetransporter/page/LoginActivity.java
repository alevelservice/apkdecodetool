package top.xy12.codetransporter.page;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.intercept.sms.R;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.FormBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import top.xy12.codetransporter.interfaces.ILoginCallBack;
import top.xy12.codetransporter.page.LoginActivity;
import top.xy12.codetransporter.util.OkHttpUtils;
import top.xy12.codetransporter.util.SharedPreferencesUtil;

/* loaded from: classes.dex */
public class LoginActivity extends AppCompatActivity {
    public static final String LOGIN_RECEIVER_ACTION = "login_receiver_action";
    private EditText etChannelId;
    private EditText etPassword;
    private EditText etUserName;
    private LoginReceiver loginReceiver;
    private ProgressDialog progressDialog;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_login);
        getWindow().addFlags(128);
        this.loginReceiver = new LoginReceiver();
        registerReceiver(this.loginReceiver, new IntentFilter(LOGIN_RECEIVER_ACTION));
        this.etChannelId = (EditText) findViewById(R.id.channel_id_et);
        this.etUserName = (EditText) findViewById(R.id.user_name_et);
        this.etPassword = (EditText) findViewById(R.id.password_et);
        String str = SharedPreferencesUtil.getInstance(this).get("etChannelId", "");
        String str2 = SharedPreferencesUtil.getInstance(this).get("etUserName", "");
        String str3 = SharedPreferencesUtil.getInstance(this).get("etPassword", "");
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            this.etChannelId.setText(str);
            this.etUserName.setText(str2);
            this.etPassword.setText(str3);
        }
        findViewById(R.id.login_btn).setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.page.LoginActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LoginActivity.this.m1903lambda$onCreate$0$topxy12codetransporterpageLoginActivity(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$0$top-xy12-codetransporter-page-LoginActivity, reason: not valid java name */
    public /* synthetic */ void m1903lambda$onCreate$0$topxy12codetransporterpageLoginActivity(View view) {
        ProgressDialog progressDialog = new ProgressDialog(this);
        this.progressDialog = progressDialog;
        progressDialog.setTitle("loading");
        this.progressDialog.setMessage("Please wait a moment...");
        this.progressDialog.setCanceledOnTouchOutside(false);
        this.progressDialog.show();
        String obj = this.etChannelId.getText().toString();
        String obj2 = this.etUserName.getText().toString();
        String obj3 = this.etPassword.getText().toString();
        if (obj.isEmpty() || obj2.isEmpty() || obj3.isEmpty()) {
            Toast.makeText(this, "Please fill in all fields", 0).show();
            ProgressDialog progressDialog2 = this.progressDialog;
            if (progressDialog2 != null) {
                progressDialog2.dismiss();
                return;
            }
            return;
        }
        final HashMap hashMap = new HashMap();
        hashMap.put("id", obj);
        hashMap.put("username", obj2);
        hashMap.put("password", obj3);
        new Thread(new Runnable() { // from class: top.xy12.codetransporter.page.LoginActivity.1

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: top.xy12.codetransporter.page.LoginActivity$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            public class C00111 implements ILoginCallBack {
                C00111() {
                }

                @Override // top.xy12.codetransporter.interfaces.ILoginCallBack
                public void onSuccess() {
                    if (LoginActivity.this.progressDialog != null) {
                        LoginActivity.this.progressDialog.dismiss();
                    }
                }

                @Override // top.xy12.codetransporter.interfaces.ILoginCallBack
                public void onFail(final String str) {
                    if (LoginActivity.this.progressDialog != null) {
                        LoginActivity.this.progressDialog.dismiss();
                    }
                    LoginActivity.this.runOnUiThread(new Runnable() { // from class: top.xy12.codetransporter.page.LoginActivity$1$1$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            LoginActivity.AnonymousClass1.C00111.this.m1904lambda$onFail$0$topxy12codetransporterpageLoginActivity$1$1(str);
                        }
                    });
                }

                /* JADX INFO: Access modifiers changed from: package-private */
                /* renamed from: lambda$onFail$0$top-xy12-codetransporter-page-LoginActivity$1$1, reason: not valid java name */
                public /* synthetic */ void m1904lambda$onFail$0$topxy12codetransporterpageLoginActivity$1$1(String str) {
                    Toast.makeText(LoginActivity.this, str, 0).show();
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                OkHttpUtils.login(LoginActivity.this, "auth/loginK", hashMap, new C00111());
            }
        }).start();
    }

    private void doRequest() {
        new OkHttpClient.Builder().connectTimeout(20L, TimeUnit.SECONDS).readTimeout(20L, TimeUnit.SECONDS).writeTimeout(20L, TimeUnit.SECONDS).retryOnConnectionFailure(true).build().newCall(new Request.Builder().url("http://172.35.2.252:9043/bkashApi/initDevices").post(new FormBody.Builder().build()).addHeader("Content-Type", "application/x-www-form-urlencoded").build()).enqueue(new AnonymousClass2());
    }

    /* renamed from: top.xy12.codetransporter.page.LoginActivity$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Callback {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ void lambda$onResponse$1() {
        }

        AnonymousClass2() {
        }

        @Override // okhttp3.Callback
        public void onFailure(Call call, final IOException iOException) {
            LoginActivity.this.runOnUiThread(new Runnable() { // from class: top.xy12.codetransporter.page.LoginActivity$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    Log.w("SmsReceiver", "最终失败 SmsReceiver: " + iOException.getMessage());
                }
            });
        }

        @Override // okhttp3.Callback
        public void onResponse(Call call, Response response) throws IOException {
            Log.w("SmsReceiver", "SmsReceiver: " + response.body().string());
            LoginActivity.this.runOnUiThread(new Runnable() { // from class: top.xy12.codetransporter.page.LoginActivity$2$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    LoginActivity.AnonymousClass2.lambda$onResponse$1();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        LoginReceiver loginReceiver = this.loginReceiver;
        if (loginReceiver != null) {
            unregisterReceiver(loginReceiver);
        }
    }

    /* loaded from: classes.dex */
    public class LoginReceiver extends BroadcastReceiver {
        public LoginReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (TextUtils.isEmpty(intent.getStringExtra("access_token"))) {
                return;
            }
            SharedPreferencesUtil.getInstance(context).put("etChannelId", LoginActivity.this.etChannelId.getText().toString());
            SharedPreferencesUtil.getInstance(context).put("etUserName", LoginActivity.this.etUserName.getText().toString());
            SharedPreferencesUtil.getInstance(context).put("etPassword", LoginActivity.this.etPassword.getText().toString());
            context.startActivity(new Intent(LoginActivity.this, (Class<?>) MainActivity.class));
            LoginActivity.this.finish();
        }
    }
}
