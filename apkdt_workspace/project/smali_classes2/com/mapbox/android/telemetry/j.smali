.class Lcom/mapbox/android/telemetry/j;
.super Ljava/lang/Object;
.source "ComCertificatePins.java"


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
    new-instance v0, Lcom/mapbox/android/telemetry/j$a;

    invoke-direct {v0}, Lcom/mapbox/android/telemetry/j$a;-><init>()V

    sput-object v0, Lcom/mapbox/android/telemetry/j;->a:Ljava/util/Map;

    return-void
.end method
