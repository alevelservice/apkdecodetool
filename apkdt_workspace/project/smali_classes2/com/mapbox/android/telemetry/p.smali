.class Lcom/mapbox/android/telemetry/p;
.super Ljava/lang/Object;
.source "EnvironmentChain.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/mapbox/android/telemetry/q;
    .locals 2

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/k;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/k;-><init>()V

    .line 2
    new-instance v1, Lcom/mapbox/android/telemetry/f0;

    invoke-direct {v1}, Lcom/mapbox/android/telemetry/f0;-><init>()V

    .line 3
    invoke-interface {v1, v0}, Lcom/mapbox/android/telemetry/q;->a(Lcom/mapbox/android/telemetry/q;)V

    .line 4
    new-instance v0, Lcom/mapbox/android/telemetry/h;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/h;-><init>()V

    .line 5
    invoke-interface {v0, v1}, Lcom/mapbox/android/telemetry/q;->a(Lcom/mapbox/android/telemetry/q;)V

    return-object v0
.end method
