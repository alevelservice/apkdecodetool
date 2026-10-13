.class public Lcom/mapbox/mapboxsdk/g;
.super Ljava/lang/Object;
.source "ModuleProviderImpl.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/mapbox/mapboxsdk/maps/z;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/module/telemetry/TelemetryImpl;-><init>()V

    return-object v0
.end method

.method public b()Lcom/mapbox/mapboxsdk/http/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/s/a/a;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/s/a/a;-><init>()V

    return-object v0
.end method

.method public c()Lcom/mapbox/mapboxsdk/c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/mapbox/mapboxsdk/s/b/a;

    invoke-direct {v0}, Lcom/mapbox/mapboxsdk/s/b/a;-><init>()V

    return-object v0
.end method
