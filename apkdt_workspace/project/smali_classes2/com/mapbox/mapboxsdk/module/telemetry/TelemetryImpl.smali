.class public Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;
.super Ljava/lang/Object;
.source "TelemetryImpl.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/z;


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final telemetry:Lcom/mapbox/android/telemetry/x;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/mapbox/android/telemetry/x;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    const-string v3, "mapbox-maps-android/9.2.0"

    invoke-direct {v1, v2, v0, v3}, Lcom/mapbox/android/telemetry/x;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    .line 5
    invoke-static {}, Lcom/mapbox/android/telemetry/j0;->b()Lcom/mapbox/android/telemetry/j0$c;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/mapbox/android/telemetry/j0$c;->ENABLED:Lcom/mapbox/android/telemetry/j0$c;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/x;->b()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public disableTelemetrySession()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/x;->a()Z

    return-void
.end method

.method public onAppUserTurnstileEvent()V
    .locals 3

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/AppUserTurnstile;

    const-string v1, "mapbox-maps-android"

    const-string v2, "9.2.0"

    invoke-direct {v0, v1, v2}, Lcom/mapbox/android/telemetry/AppUserTurnstile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "00"

    .line 2
    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/AppUserTurnstile;->setSkuId(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v1, v0}, Lcom/mapbox/android/telemetry/x;->a(Lcom/mapbox/android/telemetry/Event;)Z

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/mapbox/mapboxsdk/module/telemetry/MapEventFactory;->buildMapLoadEvent(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;)Lcom/mapbox/mapboxsdk/module/telemetry/MapLoadEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/x;->a(Lcom/mapbox/android/telemetry/Event;)Z

    return-void
.end method

.method public onCreateOfflineRegion(Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;)V
    .locals 6
    .param p1    # Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;-><init>(Landroid/content/Context;)V

    instance-of v2, p1, Lcom/mapbox/mapboxsdk/offline/OfflineTilePyramidRegionDefinition;

    if-eqz v2, :cond_0

    const-string v2, "tileregion"

    goto :goto_0

    :cond_0
    const-string v2, "shaperegion"

    .line 2
    :goto_0
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getMinZoom()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 3
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getMaxZoom()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 4
    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/offline/OfflineRegionDefinition;->getStyleURL()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v1, v2, v3, v4, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/MapEventFactory;->buildOfflineDownloadStartEvent(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;)Lcom/mapbox/mapboxsdk/module/telemetry/OfflineDownloadStartEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/x;->a(Lcom/mapbox/android/telemetry/Event;)Z

    return-void
.end method

.method public onGestureInteraction(Ljava/lang/String;DDD)V
    .locals 0
    .param p6    # D
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 25.5
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onPerformanceEvent(Landroid/os/Bundle;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->appContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v1, v2, p1}, Lcom/mapbox/mapboxsdk/module/telemetry/MapEventFactory;->buildPerformanceEvent(Lcom/mapbox/mapboxsdk/module/telemetry/PhoneState;Ljava/lang/String;Landroid/os/Bundle;)Lcom/mapbox/mapboxsdk/module/telemetry/PerformanceEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/x;->a(Lcom/mapbox/android/telemetry/Event;)Z

    return-void
.end method

.method public setDebugLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/x;->a(Z)V

    return-void
.end method

.method public setSessionIdRotationInterval(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    new-instance v1, Lcom/mapbox/android/telemetry/d0;

    invoke-direct {v1, p1}, Lcom/mapbox/android/telemetry/d0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/x;->a(Lcom/mapbox/android/telemetry/d0;)Z

    move-result p1

    return p1
.end method

.method public setUserTelemetryRequestState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcom/mapbox/android/telemetry/j0$c;->ENABLED:Lcom/mapbox/android/telemetry/j0$c;

    invoke-static {p1}, Lcom/mapbox/android/telemetry/j0;->a(Lcom/mapbox/android/telemetry/j0$c;)Lcom/mapbox/android/telemetry/j0$c;

    .line 2
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/x;->b()Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;->telemetry:Lcom/mapbox/android/telemetry/x;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/x;->a()Z

    .line 4
    sget-object p1, Lcom/mapbox/android/telemetry/j0$c;->DISABLED:Lcom/mapbox/android/telemetry/j0$c;

    invoke-static {p1}, Lcom/mapbox/android/telemetry/j0;->a(Lcom/mapbox/android/telemetry/j0$c;)Lcom/mapbox/android/telemetry/j0$c;

    :goto_0
    return-void
.end method
