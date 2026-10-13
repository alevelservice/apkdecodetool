.class public Lcom/alipay/iap/android/aplog/core/filter/DateChangeBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DateChangeBroadCastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    const-string p2, "DateChangeBroadCastReceiver"

    const-string v0, "onReceive"

    invoke-interface {p1, p2, v0}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
