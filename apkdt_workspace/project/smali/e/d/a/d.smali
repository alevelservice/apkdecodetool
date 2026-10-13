.class public Le/d/a/d;
.super Ljava/lang/Object;
.source "PluginHardwarePlugin.java"

# interfaces
.implements Lg/a/c/a/k$c;
.implements Lio/flutter/embedding/engine/g/a;
.implements Lio/flutter/embedding/engine/g/c/a;


# static fields
.field private static f:Lg/a/c/a/k;


# instance fields
.field private e:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 7
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/c;->a()Lcom/google/android/gms/common/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/c;->b(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/ads/l/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/l/a$a;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/ads/l/a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "did not found GAID... sorry"

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/l/a$a;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/f; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/c;)V
    .locals 1

    .line 1
    new-instance p1, Lg/a/c/a/k;

    const-string v0, "com.intercept.plugin_hardware/plugin_hardware"

    invoke-direct {p1, p2, v0}, Lg/a/c/a/k;-><init>(Lg/a/c/a/c;Ljava/lang/String;)V

    sput-object p1, Le/d/a/d;->f:Lg/a/c/a/k;

    .line 2
    sget-object p1, Le/d/a/d;->f:Lg/a/c/a/k;

    invoke-virtual {p1, p0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lg/a/c/a/k$d;)V
    .locals 2

    .line 3
    new-instance v0, Le/d/a/a;

    invoke-direct {v0, p1}, Le/d/a/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lg/c/a/b/d;->a(Ljava/util/concurrent/Callable;)Lg/c/a/b/d;

    move-result-object v0

    .line 4
    invoke-static {}, Lg/c/a/i/b;->a()Lg/c/a/b/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/c/a/b/d;->b(Lg/c/a/b/g;)Lg/c/a/b/d;

    move-result-object v0

    .line 5
    invoke-static {}, Lg/c/a/a/b/b;->b()Lg/c/a/b/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/c/a/b/d;->a(Lg/c/a/b/g;)Lg/c/a/b/d;

    move-result-object v0

    new-instance v1, Le/d/a/b;

    invoke-direct {v1, p0, p1, p2}, Le/d/a/b;-><init>(Le/d/a/d;Landroid/content/Context;Lg/a/c/a/k$d;)V

    .line 6
    invoke-virtual {v0, v1}, Lg/c/a/b/d;->a(Lg/c/a/e/d;)Lg/c/a/c/c;

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/content/Context;Lg/a/c/a/k$d;Ljava/lang/String;)V
    .locals 3

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {}, Le/d/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "localIPAddress"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {p1}, Le/d/a/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "batteryStatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p1}, Le/d/a/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrierName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {p1}, Le/d/a/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "imsiNumber"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Le/d/a/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bundleIdentifier"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Le/d/a/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p3}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "advertisementId"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Le/d/a/c;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "wifiStrength"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {p1}, Le/d/a/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Le/d/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "imeiNumber"

    invoke-interface {v0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {p2, v0}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/g/c/c;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Le/d/a/d;->e:Landroid/app/Activity;

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/g/a$b;->b()Lg/a/c/a/c;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Le/d/a/d;->a(Landroid/content/Context;Lg/a/c/a/c;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/d/a/d;->e:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/d/a/d;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/g/a$b;)V
    .locals 1

    .line 1
    sget-object p1, Le/d/a/d;->f:Lg/a/c/a/k;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lg/a/c/a/k;->a(Lg/a/c/a/k$c;)V

    .line 3
    sput-object v0, Le/d/a/d;->f:Lg/a/c/a/k;

    :cond_0
    return-void
.end method

.method public onMethodCall(Lg/a/c/a/j;Lg/a/c/a/k$d;)V
    .locals 4

    .line 1
    iget-object p1, p1, Lg/a/c/a/j;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x23c83c71

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x4ef4daf5

    if-eq v0, v1, :cond_1

    const v1, 0x529446af

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "getPlatformVersion"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "getSimSerial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "getAndroidHardwareInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    .line 2
    invoke-interface {p2}, Lg/a/c/a/k$d;->a()V

    goto :goto_2

    .line 3
    :cond_4
    iget-object p1, p0, Le/d/a/d;->e:Landroid/app/Activity;

    invoke-direct {p0, p1, p2}, Le/d/a/d;->a(Landroid/content/Context;Lg/a/c/a/k$d;)V

    goto :goto_2

    :cond_5
    const-string p1, ""

    .line 4
    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 5
    :cond_6
    iget-object p1, p0, Le/d/a/d;->e:Landroid/app/Activity;

    invoke-static {p1}, Le/d/a/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lg/a/c/a/k$d;->a(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/g/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/d/a/d;->onAttachedToActivity(Lio/flutter/embedding/engine/g/c/c;)V

    return-void
.end method
