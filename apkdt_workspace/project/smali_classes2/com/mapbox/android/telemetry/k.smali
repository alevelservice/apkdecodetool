.class Lcom/mapbox/android/telemetry/k;
.super Ljava/lang/Object;
.source "ComServerInformation.java"

# interfaces
.implements Lcom/mapbox/android/telemetry/q;


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

    .line 1
    new-instance p1, Lcom/mapbox/android/telemetry/b0;

    sget-object v0, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    invoke-direct {p1, v0}, Lcom/mapbox/android/telemetry/b0;-><init>(Lcom/mapbox/android/telemetry/o;)V

    return-object p1
.end method

.method public a(Lcom/mapbox/android/telemetry/q;)V
    .locals 0

    return-void
.end method
