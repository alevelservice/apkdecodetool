.class public Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityReceiver.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/mapbox/android/core/connectivity/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Boolean;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->a:Landroid/content/Context;

    .line 3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->c:Ljava/lang/Boolean;

    return-void
.end method

.method private a()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->a(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addConnectivityListener(Lcom/mapbox/android/core/connectivity/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getConnectedFlag()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->a()Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->a()Z

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/android/core/connectivity/a;

    .line 3
    invoke-interface {v0, p1}, Lcom/mapbox/android/core/connectivity/a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeConnectivityListener(Lcom/mapbox/android/core/connectivity/a;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeConnectivityUpdates()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->d:I

    .line 2
    iget v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->d:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public requestConnectivityUpdates()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->d:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3
    :cond_0
    iget v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->d:I

    return-void
.end method

.method public setConnectedFlag(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/android/core/connectivity/ConnectivityReceiver;->c:Ljava/lang/Boolean;

    return-void
.end method
