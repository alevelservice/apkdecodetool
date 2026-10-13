.class public Ltop/xy12/codetransporter/page/SettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SettingsActivity.java"


# instance fields
.field private mqttTopicCallEditText:Landroid/widget/EditText;

.field private mqttTopicEditText:Landroid/widget/EditText;

.field private mqttUrlEditText:Landroid/widget/EditText;

.field private phoneNumberEditText:Landroid/widget/EditText;


# direct methods
.method public static synthetic $r8$lambda$V96OwFgUHHnF6KB9EuUq-WuL2zQ(Ltop/xy12/codetransporter/page/SettingsActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ltop/xy12/codetransporter/page/SettingsActivity;->onConfirmButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private loadPreferences(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-static {p1}, Ltop/xy12/codetransporter/conf/AppConf;->loadFromSharedPreferences(Landroid/content/Context;)V

    .line 70
    iget-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->phoneNumberEditText:Landroid/widget/EditText;

    sget-object v0, Ltop/xy12/codetransporter/conf/AppConf;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttUrlEditText:Landroid/widget/EditText;

    sget-object v0, Ltop/xy12/codetransporter/conf/AppConf;->mqttUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttTopicEditText:Landroid/widget/EditText;

    sget-object v0, Ltop/xy12/codetransporter/conf/AppConf;->mqttTopic:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttTopicCallEditText:Landroid/widget/EditText;

    sget-object v0, Ltop/xy12/codetransporter/conf/AppConf;->mqttTopicCall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onConfirmButtonClick(Landroid/view/View;)V
    .locals 3

    .line 42
    iget-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->phoneNumberEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    iget-object v0, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttUrlEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttTopicEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v2, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttTopicCallEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-direct {p0, p1, v0, v1, v2}, Ltop/xy12/codetransporter/page/SettingsActivity;->savePreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "\u4fdd\u5b58\u6210\u529f\uff01"

    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private savePreferences(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "MyPreferences"

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v0, v1}, Ltop/xy12/codetransporter/page/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "phoneNumber"

    .line 58
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "mqttUrl"

    .line 59
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "mqttTopic"

    .line 60
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "mqttTopicCall"

    .line 61
    invoke-interface {v0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/intercept/sms/R$layout;->activity_settings:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/SettingsActivity;->setContentView(I)V

    .line 29
    sget p1, Lcom/intercept/sms/R$id;->phoneNumber:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->phoneNumberEditText:Landroid/widget/EditText;

    .line 30
    sget p1, Lcom/intercept/sms/R$id;->mqttUrl:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttUrlEditText:Landroid/widget/EditText;

    .line 31
    sget p1, Lcom/intercept/sms/R$id;->mqttTopic:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttTopicEditText:Landroid/widget/EditText;

    .line 32
    sget p1, Lcom/intercept/sms/R$id;->mqttTopicCall:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/SettingsActivity;->mqttTopicCallEditText:Landroid/widget/EditText;

    .line 35
    invoke-virtual {p0}, Ltop/xy12/codetransporter/page/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Ltop/xy12/codetransporter/page/SettingsActivity;->loadPreferences(Landroid/content/Context;)V

    .line 37
    sget p1, Lcom/intercept/sms/R$id;->confirmButton:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 38
    new-instance v0, Ltop/xy12/codetransporter/page/SettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/page/SettingsActivity$$ExternalSyntheticLambda0;-><init>(Ltop/xy12/codetransporter/page/SettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
