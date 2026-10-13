.class Lcom/mapbox/android/telemetry/h0;
.super Ljava/lang/Object;
.source "TelemetryClientFactory.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/mapbox/android/telemetry/w;

.field private final d:Lcom/mapbox/android/telemetry/e;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/android/telemetry/h0;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/mapbox/android/telemetry/h0;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/mapbox/android/telemetry/h0;->c:Lcom/mapbox/android/telemetry/w;

    .line 5
    iput-object p4, p0, Lcom/mapbox/android/telemetry/h0;->d:Lcom/mapbox/android/telemetry/e;

    return-void
.end method

.method private a(Lcom/mapbox/android/telemetry/b0;Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;
    .locals 3

    .line 16
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/b0;->b()Lcom/mapbox/android/telemetry/o;

    move-result-object v0

    .line 17
    sget-object v1, Lcom/mapbox/android/telemetry/h0$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 18
    iget-object p1, p0, Lcom/mapbox/android/telemetry/h0;->d:Lcom/mapbox/android/telemetry/e;

    invoke-direct {p0, v0, p1, p2}, Lcom/mapbox/android/telemetry/h0;->a(Lcom/mapbox/android/telemetry/o;Lcom/mapbox/android/telemetry/e;Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;

    move-result-object p1

    return-object p1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mapbox/android/telemetry/h0;->d:Lcom/mapbox/android/telemetry/e;

    invoke-direct {p0, p1, v0, p2}, Lcom/mapbox/android/telemetry/h0;->a(Lcom/mapbox/android/telemetry/b0;Lcom/mapbox/android/telemetry/e;Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/mapbox/android/telemetry/b0;Lcom/mapbox/android/telemetry/e;Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;
    .locals 9

    .line 10
    new-instance v0, Lcom/mapbox/android/telemetry/i0$b;

    invoke-direct {v0, p3}, Lcom/mapbox/android/telemetry/i0$b;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/b0;->b()Lcom/mapbox/android/telemetry/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Lcom/mapbox/android/telemetry/o;)Lcom/mapbox/android/telemetry/i0$b;

    .line 12
    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/b0;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mapbox/android/telemetry/i0;->a(Ljava/lang/String;)Li/s;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mapbox/android/telemetry/i0$b;->a(Li/s;)Lcom/mapbox/android/telemetry/i0$b;

    .line 13
    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/i0$b;->a()Lcom/mapbox/android/telemetry/i0;

    move-result-object v6

    .line 14
    new-instance v0, Lcom/mapbox/android/telemetry/g0;

    invoke-virtual {p1}, Lcom/mapbox/android/telemetry/b0;->a()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mapbox/android/telemetry/h0;->b:Ljava/lang/String;

    .line 15
    invoke-static {p3}, Lcom/mapbox/android/telemetry/l0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/mapbox/android/telemetry/h0;->c:Lcom/mapbox/android/telemetry/w;

    move-object v2, v0

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/mapbox/android/telemetry/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/i0;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V

    return-object v0
.end method

.method private a(Lcom/mapbox/android/telemetry/o;Lcom/mapbox/android/telemetry/e;Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;
    .locals 8

    .line 7
    new-instance v7, Lcom/mapbox/android/telemetry/g0;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/h0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mapbox/android/telemetry/h0;->b:Ljava/lang/String;

    .line 8
    invoke-static {p3}, Lcom/mapbox/android/telemetry/l0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/mapbox/android/telemetry/i0$b;

    invoke-direct {v0, p3}, Lcom/mapbox/android/telemetry/i0$b;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-virtual {v0, p1}, Lcom/mapbox/android/telemetry/i0$b;->a(Lcom/mapbox/android/telemetry/o;)Lcom/mapbox/android/telemetry/i0$b;

    invoke-virtual {v0}, Lcom/mapbox/android/telemetry/i0$b;->a()Lcom/mapbox/android/telemetry/i0;

    move-result-object v4

    iget-object v5, p0, Lcom/mapbox/android/telemetry/h0;->c:Lcom/mapbox/android/telemetry/w;

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mapbox/android/telemetry/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapbox/android/telemetry/i0;Lcom/mapbox/android/telemetry/w;Lcom/mapbox/android/telemetry/e;)V

    return-object v7
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/mapbox/android/telemetry/p;

    invoke-direct {v1}, Lcom/mapbox/android/telemetry/p;-><init>()V

    .line 4
    invoke-virtual {v1}, Lcom/mapbox/android/telemetry/p;->a()Lcom/mapbox/android/telemetry/q;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-interface {v1, v0}, Lcom/mapbox/android/telemetry/q;->a(Landroid/os/Bundle;)Lcom/mapbox/android/telemetry/b0;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mapbox/android/telemetry/h0;->a(Lcom/mapbox/android/telemetry/b0;Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/mapbox/android/telemetry/h0;->c:Lcom/mapbox/android/telemetry/w;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Failed when retrieving app meta-data: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TelemetryClientFactory"

    invoke-virtual {v1, v2, v0}, Lcom/mapbox/android/telemetry/w;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    sget-object v0, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    iget-object v1, p0, Lcom/mapbox/android/telemetry/h0;->d:Lcom/mapbox/android/telemetry/e;

    invoke-direct {p0, v0, v1, p1}, Lcom/mapbox/android/telemetry/h0;->a(Lcom/mapbox/android/telemetry/o;Lcom/mapbox/android/telemetry/e;Landroid/content/Context;)Lcom/mapbox/android/telemetry/g0;

    move-result-object p1

    return-object p1
.end method
