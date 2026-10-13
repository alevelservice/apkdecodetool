.class public abstract Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RigorousNetworkConnReceiver.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/Boolean;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->a:I

    .line 3
    iput v0, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->b:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 5
    iput-object p1, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    .line 6
    iput-object v1, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 7
    iput v0, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->a:I

    .line 8
    iput v0, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;)I
    .locals 10

    const-string v0, "NetworkConnReceiver"

    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveNetworkInfo exception. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    const-string v2, "No network now!"

    invoke-interface {p1, v0, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    return v1

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 8
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 9
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v5

    .line 10
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v6

    .line 11
    iget v7, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->a:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->b:I

    if-eq v7, v8, :cond_2

    iget-object v7, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    if-nez v7, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v3, :cond_3

    iget v7, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->a:I

    if-ne v7, v4, :cond_3

    iget v7, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->b:I

    if-ne v7, v5, :cond_3

    .line 13
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    const-string v1, " Old contivity broadcast!"

    invoke-interface {p1, v0, v1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1

    .line 14
    :cond_2
    :goto_1
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v7

    const-string v8, " New contivity broadcast!"

    invoke-interface {v7, v0, v8}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    .line 16
    iput v4, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->a:I

    .line 17
    iput v5, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->b:I

    .line 18
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " type=["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] subType=["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]  available=["

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] connected=["

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] detailedState=["

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] extraInfo=["

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 20
    invoke-interface {v7, v0, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " activeNetworkInfo hashcode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  activeNetworkInfo = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\n\n\n"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 24
    invoke-interface {v2, v0, p1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string v0, "NetworkConnReceiver"

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    const-string v2, "monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-interface {v1, v2, v3}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, p1}, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->a(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    const-string v2, "NetworkConnectivityReceiver#onReceive network is not available"

    invoke-interface {v1, v0, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->onReceivee(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 8
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    const-string v2, "NetworkConnectivityReceiver#onReceive network is changed"

    invoke-interface {v1, v0, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->onReceivee(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected abstract onReceivee(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public register()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkConnReceiver"

    invoke-interface {v1, v2, v0}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/iap/android/aplog/network/RigorousNetworkConnReceiver;->d:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetworkConnReceiver"

    invoke-interface {v1, v2, v0}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
