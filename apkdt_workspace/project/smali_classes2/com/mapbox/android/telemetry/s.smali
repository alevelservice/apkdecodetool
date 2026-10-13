.class public Lcom/mapbox/android/telemetry/s;
.super Ljava/lang/Object;
.source "FileAttachment.java"


# instance fields
.field private a:Lcom/mapbox/android/telemetry/d;

.field private b:Ljava/lang/String;

.field private c:Li/u;


# virtual methods
.method public a()Lcom/mapbox/android/telemetry/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/s;->a:Lcom/mapbox/android/telemetry/d;

    return-object v0
.end method

.method public b()Lcom/mapbox/android/telemetry/t;
    .locals 3

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/t;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/mapbox/android/telemetry/s;->c:Li/u;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/android/telemetry/t;-><init>(Ljava/lang/String;Li/u;)V

    return-object v0
.end method
