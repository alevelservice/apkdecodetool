.class public Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsConsentBroadcastReceiver.java"


# static fields
.field private static a:Lcom/jaumard/smsautofill/e;


# direct methods
.method public constructor <init>(Lcom/jaumard/smsautofill/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    sput-object p1, Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;->a:Lcom/jaumard/smsautofill/e;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.google.android.gms.auth.api.phone.SMS_RETRIEVED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_STATUS"

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/common/api/Status;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Status;->k()I

    move-result p2

    if-eqz p2, :cond_1

    const/16 p1, 0xf

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;->a:Lcom/jaumard/smsautofill/e;

    invoke-interface {p1}, Lcom/jaumard/smsautofill/e;->a()V

    goto :goto_0

    :cond_1
    const-string p2, "com.google.android.gms.auth.api.phone.EXTRA_CONSENT_INTENT"

    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 7
    sget-object p2, Lcom/jaumard/smsautofill/SmsConsentBroadcastReceiver;->a:Lcom/jaumard/smsautofill/e;

    invoke-interface {p2, p1}, Lcom/jaumard/smsautofill/e;->a(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method
