.class public Ltop/xy12/codetransporter/page/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;
    }
.end annotation


# static fields
.field public static final LOGIN_RECEIVER_ACTION:Ljava/lang/String; = "login_receiver_action"


# instance fields
.field private etChannelId:Landroid/widget/EditText;

.field private etPassword:Landroid/widget/EditText;

.field private etUserName:Landroid/widget/EditText;

.field private loginReceiver:Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etChannelId:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etUserName:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/widget/EditText;
    .locals 0

    .line 36
    iget-object p0, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etPassword:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$300(Ltop/xy12/codetransporter/page/LoginActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Ltop/xy12/codetransporter/page/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private doRequest()V
    .locals 4

    .line 127
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    .line 128
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 129
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 130
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 131
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 140
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    .line 142
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    const-string v3, "http://172.35.2.252:9043/bkashApi/initDevices"

    .line 143
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    .line 146
    invoke-virtual {v1, v2, v3}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Ltop/xy12/codetransporter/page/LoginActivity$2;

    invoke-direct {v1, p0}, Ltop/xy12/codetransporter/page/LoginActivity$2;-><init>(Ltop/xy12/codetransporter/page/LoginActivity;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$top-xy12-codetransporter-page-LoginActivity(Landroid/view/View;)V
    .locals 4

    .line 73
    new-instance p1, Landroid/app/ProgressDialog;

    invoke-direct {p1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v0, "loading"

    .line 74
    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    const-string v0, "Please wait a moment..."

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 77
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 78
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etChannelId:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etUserName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "id"

    .line 90
    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "username"

    .line 91
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "password"

    .line 92
    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance p1, Ljava/lang/Thread;

    new-instance v1, Ltop/xy12/codetransporter/page/LoginActivity$1;

    invoke-direct {v1, p0, v0}, Ltop/xy12/codetransporter/page/LoginActivity$1;-><init>(Ltop/xy12/codetransporter/page/LoginActivity;Ljava/util/HashMap;)V

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    const-string p1, "Please fill in all fields"

    .line 83
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 84
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_2

    .line 85
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget p1, Lcom/intercept/sms/R$layout;->activity_login:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/LoginActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Ltop/xy12/codetransporter/page/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 50
    new-instance p1, Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;

    invoke-direct {p1, p0}, Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;-><init>(Ltop/xy12/codetransporter/page/LoginActivity;)V

    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->loginReceiver:Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;

    .line 51
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "login_receiver_action"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity;->loginReceiver:Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;

    invoke-virtual {p0, v0, p1}, Ltop/xy12/codetransporter/page/LoginActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    sget p1, Lcom/intercept/sms/R$id;->channel_id_et:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etChannelId:Landroid/widget/EditText;

    .line 55
    sget p1, Lcom/intercept/sms/R$id;->user_name_et:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etUserName:Landroid/widget/EditText;

    .line 56
    sget p1, Lcom/intercept/sms/R$id;->password_et:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etPassword:Landroid/widget/EditText;

    .line 60
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object p1

    const-string v0, "etChannelId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object v0

    const-string v2, "etUserName"

    invoke-virtual {v0, v2, v1}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p0}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->getInstance(Landroid/content/Context;)Ltop/xy12/codetransporter/util/SharedPreferencesUtil;

    move-result-object v2

    const-string v3, "etPassword"

    invoke-virtual {v2, v3, v1}, Ltop/xy12/codetransporter/util/SharedPreferencesUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    iget-object v2, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etChannelId:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etUserName:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object p1, p0, Ltop/xy12/codetransporter/page/LoginActivity;->etPassword:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_0
    sget p1, Lcom/intercept/sms/R$id;->login_btn:I

    invoke-virtual {p0, p1}, Ltop/xy12/codetransporter/page/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltop/xy12/codetransporter/page/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltop/xy12/codetransporter/page/LoginActivity$$ExternalSyntheticLambda0;-><init>(Ltop/xy12/codetransporter/page/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 172
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 173
    iget-object v0, p0, Ltop/xy12/codetransporter/page/LoginActivity;->loginReceiver:Ltop/xy12/codetransporter/page/LoginActivity$LoginReceiver;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Ltop/xy12/codetransporter/page/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
