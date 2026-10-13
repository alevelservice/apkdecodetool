.class public Lcom/jaumard/smsautofill/d;
.super Ljava/lang/Object;
.source "SmsAutoFillPlugin.java"

# interfaces
.implements Lg/a/c/a/k$c;
.implements Lcom/jaumard/smsautofill/e;
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;
.implements Lg/a/c/a/m$a;


# instance fields
.field private e:Landroid/app/Activity;

.field private f:Lg/a/c/a/k$d;

.field private g:Lg/a/c/a/k;

.field private h:Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jaumard/smsautofill/d;->i:Z

    .line 3
    iput-boolean v0, p0, Lcom/jaumard/smsautofill/d;->j:Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\d{6}"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 1
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "sms_autofill"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jaumard/smsautofill/d;->g:Lg/a/c/a/k;

    .line 2
    iget-object p1, p0, Lcom/jaumard/smsautofill/d;->g:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method private b()V
    .locals 3

    .line 2
    new-instance v0, Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;-><init>(Lcom/jaumard/smsautofill/e;)V

    iput-object v0, p0, Lcom/jaumard/smsautofill/d;->h:Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;

    .line 3
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/jaumard/smsautofill/d;->h:Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/jaumard/smsautofill/d;->i:Z

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jaumard/smsautofill/d;->g:Lg/a/c/a/k;

    const-string v1, "smscode"

    invoke-virtual {v0, v1, p1}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private c()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->a(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$a;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$a;->a()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/credentials/b;->a(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/credentials/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/credentials/d;->a(Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/16 v3, 0x2b04

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/phone/a;->a(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/c;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/phone/c;->a(Ljava/lang/String;)Le/i/b/b/d/h;

    move-result-object p1

    .line 9
    new-instance v0, Lcom/jaumard/smsautofill/b;

    invoke-direct {v0, p0}, Lcom/jaumard/smsautofill/b;-><init>(Lcom/jaumard/smsautofill/d;)V

    invoke-virtual {p1, v0}, Le/i/b/b/d/h;->a(Le/i/b/b/d/e;)Le/i/b/b/d/h;

    new-instance v0, Lcom/jaumard/smsautofill/a;

    invoke-direct {v0, p0}, Lcom/jaumard/smsautofill/a;-><init>(Lcom/jaumard/smsautofill/d;)V

    .line 10
    invoke-virtual {p1, v0}, Le/i/b/b/d/h;->a(Le/i/b/b/d/d;)Le/i/b/b/d/h;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    const/16 v1, 0xf4

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public synthetic a(Ljava/lang/Exception;)V
    .locals 3

    .line 8
    iget-object p1, p0, Lcom/jaumard/smsautofill/d;->f:Lg/a/c/a/k$d;

    const-string v0, "ERROR_START_SMS_RETRIEVER"

    const-string v1, "Can\'t start sms retriever"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lg/a/c/a/k$d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Void;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/jaumard/smsautofill/d;->b()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x2b04

    if-ne p1, v3, :cond_1

    if-ne p2, v1, :cond_0

    const-string p1, "com.google.android.gms.credentials.Credential"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->m()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/jaumard/smsautofill/d;->f:Lg/a/c/a/k$d;

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/jaumard/smsautofill/d;->f:Lg/a/c/a/k$d;

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_0
    return v2

    :cond_1
    const/16 v3, 0xf4

    const/4 v4, 0x0

    if-ne p1, v3, :cond_3

    .line 5
    iget-boolean p1, p0, Lcom/jaumard/smsautofill/d;->j:Z

    if-eqz p1, :cond_3

    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    const-string p1, "com.google.android.gms.auth.api.phone.EXTRA_SMS_MESSAGE"

    .line 6
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lcom/jaumard/smsautofill/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p0, p1}, Lcom/jaumard/smsautofill/d;->b(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/jaumard/smsautofill/d;->f:Lg/a/c/a/k$d;

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/jaumard/smsautofill/d;->g:Lg/a/c/a/k;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "autoFillDenied"

    invoke-virtual {p1, p3, p2}, Lg/a/c/a/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/jaumard/smsautofill/d;->f:Lg/a/c/a/k$d;

    invoke-interface {p1, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    .line 12
    :goto_1
    iput-boolean v4, p0, Lcom/jaumard/smsautofill/d;->j:Z

    return v2

    :cond_3
    return v4
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    .line 2
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/g/c/c;->a(Lg/a/c/a/m$a;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/jaumard/smsautofill/d;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/jaumard/smsautofill/d;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/jaumard/smsautofill/d;->g:Lg/a/c/a/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    iput-object v0, p0, Lcom/jaumard/smsautofill/d;->g:Lg/a/c/a/k;

    :cond_0
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 7
    .param p2    # Lg/a/c/a/k$d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "requestPhoneHint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "getPlatformVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "getAppSignature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "unregisterListener"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "listenForCode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :cond_1
    new-instance p1, Lcom/jaumard/smsautofill/c;

    iget-object v0, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/jaumard/smsautofill/c;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1}, Lcom/jaumard/smsautofill/c;->a()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_2
    iget-boolean p1, p0, Lcom/jaumard/smsautofill/d;->i:Z

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Lcom/jaumard/smsautofill/d;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/jaumard/smsautofill/d;->h:Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    iput-boolean v2, p0, Lcom/jaumard/smsautofill/d;->i:Z

    const-string p1, "successfully unregister receiver"

    .line 9
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 10
    :cond_3
    iput-boolean v6, p0, Lcom/jaumard/smsautofill/d;->j:Z

    .line 11
    iput-object p2, p0, Lcom/jaumard/smsautofill/d;->f:Lg/a/c/a/k$d;

    const-string p2, "serviceNumber"

    .line 12
    invoke-virtual {p1, p2}, Lg/a/c/a/j;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/jaumard/smsautofill/d;->c(Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_4
    iput-object p2, p0, Lcom/jaumard/smsautofill/d;->f:Lg/a/c/a/k$d;

    .line 15
    invoke-direct {p0}, Lcom/jaumard/smsautofill/d;->c()V

    :cond_5
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x48531171 -> :sswitch_4
        -0x3dde3ef0 -> :sswitch_3
        0x6e1a60d -> :sswitch_2
        0x529446af -> :sswitch_1
        0x727ec746 -> :sswitch_0
    .end sparse-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/jaumard/smsautofill/d;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method
