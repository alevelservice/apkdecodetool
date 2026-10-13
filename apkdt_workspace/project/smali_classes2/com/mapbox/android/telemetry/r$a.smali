.class Lcom/mapbox/android/telemetry/r$a;
.super Ljava/lang/Object;
.source "EventsQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/android/telemetry/r;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Ljava/util/List;

.field final synthetic f:Lcom/mapbox/android/telemetry/r;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/r;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/android/telemetry/r$a;->f:Lcom/mapbox/android/telemetry/r;

    iput-object p2, p0, Lcom/mapbox/android/telemetry/r$a;->e:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/r$a;->f:Lcom/mapbox/android/telemetry/r;

    invoke-static {v0}, Lcom/mapbox/android/telemetry/r;->a(Lcom/mapbox/android/telemetry/r;)Lcom/mapbox/android/telemetry/u;

    move-result-object v0

    iget-object v1, p0, Lcom/mapbox/android/telemetry/r$a;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/mapbox/android/telemetry/u;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method
