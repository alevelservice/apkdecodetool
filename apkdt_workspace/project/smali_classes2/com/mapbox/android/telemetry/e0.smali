.class Lcom/mapbox/android/telemetry/e0;
.super Ljava/lang/Object;
.source "StagingCertificatePins.java"


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/mapbox/android/telemetry/e0$a;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/e0$a;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/e0;->a:Ljava/util/Map;

    return-void
.end method
