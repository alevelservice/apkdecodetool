package top.xy12.codetransporter.page;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import com.intercept.sms.R;
import top.xy12.codetransporter.conf.AppConf;

/* loaded from: classes.dex */
public class SettingsActivity extends AppCompatActivity {
    private EditText mqttTopicCallEditText;
    private EditText mqttTopicEditText;
    private EditText mqttUrlEditText;
    private EditText phoneNumberEditText;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_settings);
        this.phoneNumberEditText = (EditText) findViewById(R.id.phoneNumber);
        this.mqttUrlEditText = (EditText) findViewById(R.id.mqttUrl);
        this.mqttTopicEditText = (EditText) findViewById(R.id.mqttTopic);
        this.mqttTopicCallEditText = (EditText) findViewById(R.id.mqttTopicCall);
        loadPreferences(getApplicationContext());
        ((Button) findViewById(R.id.confirmButton)).setOnClickListener(new View.OnClickListener() { // from class: top.xy12.codetransporter.page.SettingsActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsActivity.this.onConfirmButtonClick(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onConfirmButtonClick(View view) {
        savePreferences(this.phoneNumberEditText.getText().toString(), this.mqttUrlEditText.getText().toString(), this.mqttTopicEditText.getText().toString(), this.mqttTopicCallEditText.getText().toString());
        Toast.makeText(this, "保存成功！", 0).show();
    }

    private void savePreferences(String str, String str2, String str3, String str4) {
        SharedPreferences.Editor edit = getSharedPreferences(AppConf.PREF_NAME, 0).edit();
        edit.putString(AppConf.KEY_PHONE_NUMBER, str);
        edit.putString(AppConf.KEY_MQTT_URL, str2);
        edit.putString(AppConf.KEY_MQTT_TOPIC, str3);
        edit.putString(AppConf.KEY_MQTT_TOPIC_CAll, str4);
        edit.apply();
    }

    private void loadPreferences(Context context) {
        AppConf.loadFromSharedPreferences(context);
        this.phoneNumberEditText.setText(AppConf.phoneNumber);
        this.mqttUrlEditText.setText(AppConf.mqttUrl);
        this.mqttTopicEditText.setText(AppConf.mqttTopic);
        this.mqttTopicCallEditText.setText(AppConf.mqttTopicCall);
    }
}
