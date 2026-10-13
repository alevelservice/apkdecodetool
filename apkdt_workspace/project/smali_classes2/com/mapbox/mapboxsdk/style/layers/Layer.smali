.class public abstract Lcom/mapbox/mapboxsdk/style/layers/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field private a:Z

.field private invalidated:Z
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field

.field private nativePtr:J
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/mapbox/mapboxsdk/b;->a()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a()V

    .line 3
    iput-wide p1, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativePtr:J

    return-void
.end method

.method private a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 10
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/u/a/a;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Lcom/mapbox/mapboxsdk/u/a/a;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/u/a/a;->b()[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    instance-of v0, p1, Lcom/mapbox/mapboxsdk/style/types/Formatted;

    if-eqz v0, :cond_1

    .line 13
    check-cast p1, Lcom/mapbox/mapboxsdk/style/types/Formatted;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/style/types/Formatted;->toArray()[Ljava/lang/Object;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected a()V
    .locals 1

    const-string v0, "Mbgl-Layer"

    .line 1
    invoke-static {v0}, Lcom/mapbox/mapboxsdk/utils/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method public varargs a([Lcom/mapbox/mapboxsdk/style/layers/d;)V
    .locals 5
    .param p1    # [Lcom/mapbox/mapboxsdk/style/layers/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "*>;)V"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a()V

    .line 4
    array-length v0, p1

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 6
    iget-object v3, v2, Lcom/mapbox/mapboxsdk/style/layers/d;->b:Ljava/lang/Object;

    invoke-direct {p0, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v4, v2, Lcom/mapbox/mapboxsdk/style/layers/b;

    if-eqz v4, :cond_2

    .line 8
    iget-object v2, v2, Lcom/mapbox/mapboxsdk/style/layers/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeSetPaintProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, v2, Lcom/mapbox/mapboxsdk/style/layers/d;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeSetLayoutProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a()V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeGetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativePtr:J

    return-wide v0
.end method

.method public d()Lcom/mapbox/mapboxsdk/style/layers/d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mapbox/mapboxsdk/style/layers/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a()V

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/style/layers/b;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->nativeGetVisibility()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "visibility"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/mapboxsdk/style/layers/b;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a:Z

    return-void
.end method

.method protected native finalize()V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeGetFilter()Lcom/google/gson/JsonElement;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method protected native nativeGetId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected native nativeGetMaxZoom()F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeGetMinZoom()F
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeGetSourceId()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected native nativeGetSourceLayer()Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected native nativeGetVisibility()Ljava/lang/Object;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected native nativeSetFilter([Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeSetLayoutProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeSetMaxZoom(F)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeSetMinZoom(F)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeSetPaintProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method

.method protected native nativeSetSourceLayer(Ljava/lang/String;)V
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end method
