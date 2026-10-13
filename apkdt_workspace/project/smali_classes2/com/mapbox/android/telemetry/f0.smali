.class Lcom/mapbox/android/telemetry/f0;
.super Ljava/lang/Object;
.source "StagingServerInformation.java"

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

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/mapbox/android/telemetry/b0;
    .locals 2

    .line 7
    new-instance v0, Lcom/mapbox/android/telemetry/b0;

    sget-object v1, Lcom/mapbox/android/telemetry/o;->STAGING:Lcom/mapbox/android/telemetry/o;

    invoke-direct {v0, v1}, Lcom/mapbox/android/telemetry/b0;-><init>(Lcom/mapbox/android/telemetry/o;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/b0;->b(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Lcom/mapbox/android/telemetry/b0;->a(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/b0;
    .locals 3

    const-string v0, "com.mapbox.TestEventsServer"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mapbox.TestEventsAccessToken"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0}, Lcom/mapbox/android/telemetry/l0;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/mapbox/android/telemetry/l0;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-direct {p0, v0, v1}, Lcom/mapbox/android/telemetry/f0;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mapbox/android/telemetry/b0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/f0;->a:Lcom/mapbox/android/telemetry/q;

    invoke-interface {v0, p1}, Lcom/mapbox/android/telemetry/q;->a(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/b0;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/mapbox/android/telemetry/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/android/telemetry/f0;->a:Lcom/mapbox/android/telemetry/q;

    return-void
.end method
