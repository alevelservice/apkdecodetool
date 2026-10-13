.class Lcom/mapbox/android/telemetry/location/a$a;
.super Landroid/os/Handler;
.source "LocationCollectionClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/android/telemetry/location/a;-><init>(Lcom/mapbox/android/telemetry/location/b;Landroid/os/HandlerThread;Lcom/mapbox/android/telemetry/location/e;Landroid/content/SharedPreferences;Lcom/mapbox/android/telemetry/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/android/telemetry/location/a;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/location/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/android/telemetry/location/a$a;->a:Lcom/mapbox/android/telemetry/location/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/location/a$a;->a:Lcom/mapbox/android/telemetry/location/a;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/location/a;->a(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method
