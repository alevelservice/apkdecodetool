.class Lcom/mapbox/android/telemetry/b0;
.super Ljava/lang/Object;
.source "ServerInformation.java"


# instance fields
.field private a:Lcom/mapbox/android/telemetry/o;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mapbox/android/telemetry/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/android/telemetry/b0;->a:Lcom/mapbox/android/telemetry/o;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/b0;->c:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/android/telemetry/b0;->c:Ljava/lang/String;

    return-void
.end method

.method b()Lcom/mapbox/android/telemetry/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/b0;->a:Lcom/mapbox/android/telemetry/o;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mapbox/android/telemetry/b0;->b:Ljava/lang/String;

    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/android/telemetry/b0;->b:Ljava/lang/String;

    return-object v0
.end method
