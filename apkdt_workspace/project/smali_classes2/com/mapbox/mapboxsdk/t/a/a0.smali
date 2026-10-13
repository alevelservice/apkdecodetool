.class Lcom/mapbox/mapboxsdk/t/a/a0;
.super Ljava/lang/Object;
.source "SymbolElementProvider.java"

# interfaces
.implements Lcom/mapbox/mapboxsdk/t/a/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mapbox/mapboxsdk/t/a/h<",
        "Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/mapbox/mapboxsdk/t/a/a0;->c:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/mapbox/mapboxsdk/t/a/a0;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "mapbox-android-symbol-layer-%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mapbox/mapboxsdk/t/a/a0;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "mapbox-android-symbol-source-%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/style/sources/a;)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/style/sources/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/a0;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;-><init>(Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/a0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b()Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/a0;->b()Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;
    .locals 3

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/a0;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/t/a/a0;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
