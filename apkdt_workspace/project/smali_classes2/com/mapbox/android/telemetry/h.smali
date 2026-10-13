.class Lcom/mapbox/android/telemetry/h;
.super Ljava/lang/Object;
.source "ChinaServerInformation.java"

# interfaces
.implements Lcom/mapbox/android/telemetry/q;


# instance fields
.field private a:Lcom/mapbox/android/telemetry/q;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/b0;
    .locals 1

    const-string v0, "com.mapbox.CnEventsServer"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/mapbox/android/telemetry/b0;

    sget-object v0, Lcom/mapbox/android/telemetry/o;->CHINA:Lcom/mapbox/android/telemetry/o;

    invoke-direct {p1, v0}, Lcom/mapbox/android/telemetry/b0;-><init>(Lcom/mapbox/android/telemetry/o;)V

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/h;->a:Lcom/mapbox/android/telemetry/q;

    invoke-interface {v0, p1}, Lcom/mapbox/android/telemetry/q;->a(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/b0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mapbox/android/telemetry/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/android/telemetry/h;->a:Lcom/mapbox/android/telemetry/q;

    return-void
.end method
