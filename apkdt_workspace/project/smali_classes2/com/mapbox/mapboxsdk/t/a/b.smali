.class public abstract Lcom/mapbox/mapboxsdk/t/a/b;
.super Ljava/lang/Object;
.source "AnnotationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapbox/mapboxsdk/t/a/b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Lcom/mapbox/mapboxsdk/style/layers/Layer;",
        "T:",
        "Lcom/mapbox/mapboxsdk/t/a/a;",
        "S:",
        "Lcom/mapbox/mapboxsdk/t/a/y<",
        "TT;>;D::",
        "Lcom/mapbox/mapboxsdk/t/a/s<",
        "TT;>;U::",
        "Lcom/mapbox/mapboxsdk/t/a/r<",
        "TT;>;V::",
        "Lcom/mapbox/mapboxsdk/t/a/t<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/mapbox/mapboxsdk/maps/n;

.field protected final b:La/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/e/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/layers/d;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/mapbox/mapboxsdk/u/a/a;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field private i:J

.field protected j:Lcom/mapbox/mapboxsdk/style/layers/Layer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "T",
            "L;"
        }
    .end annotation
.end field

.field private k:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

.field private final l:Lcom/mapbox/mapboxsdk/t/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/t/a/b<",
            "T",
            "L;",
            "TT;TS;TD;TU;TV;>.b;"
        }
    .end annotation
.end field

.field private m:Lcom/mapbox/mapboxsdk/maps/Style;

.field private n:Ljava/lang/String;

.field private o:Lcom/mapbox/mapboxsdk/t/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mapbox/mapboxsdk/t/a/h<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/mapbox/mapboxsdk/t/a/i;


# direct methods
.method protected constructor <init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/Style;Lcom/mapbox/mapboxsdk/t/a/h;Lcom/mapbox/mapboxsdk/t/a/i;Ljava/lang/String;Lcom/mapbox/mapboxsdk/style/sources/a;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/maps/MapView;",
            "Lcom/mapbox/mapboxsdk/maps/n;",
            "Lcom/mapbox/mapboxsdk/maps/Style;",
            "Lcom/mapbox/mapboxsdk/t/a/h<",
            "T",
            "L;",
            ">;",
            "Lcom/mapbox/mapboxsdk/t/a/i;",
            "Ljava/lang/String;",
            "Lcom/mapbox/mapboxsdk/style/sources/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/e/d;

    invoke-direct {v0}, La/e/d;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->d:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->f:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->g:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->h:Ljava/util/List;

    .line 8
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/t/a/b;->a:Lcom/mapbox/mapboxsdk/maps/n;

    .line 9
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/b;->m:Lcom/mapbox/mapboxsdk/maps/Style;

    .line 10
    iput-object p6, p0, Lcom/mapbox/mapboxsdk/t/a/b;->n:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/mapbox/mapboxsdk/t/a/b;->o:Lcom/mapbox/mapboxsdk/t/a/h;

    .line 12
    iput-object p5, p0, Lcom/mapbox/mapboxsdk/t/a/b;->p:Lcom/mapbox/mapboxsdk/t/a/i;

    .line 13
    invoke-virtual {p3}, Lcom/mapbox/mapboxsdk/maps/Style;->e()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 14
    new-instance p3, Lcom/mapbox/mapboxsdk/t/a/b$b;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/mapbox/mapboxsdk/t/a/b$b;-><init>(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/t/a/b$a;)V

    iput-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/b;->l:Lcom/mapbox/mapboxsdk/t/a/b$b;

    invoke-virtual {p2, p3}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$o;)V

    .line 15
    iget-object p3, p0, Lcom/mapbox/mapboxsdk/t/a/b;->l:Lcom/mapbox/mapboxsdk/t/a/b$b;

    invoke-virtual {p2, p3}, Lcom/mapbox/mapboxsdk/maps/n;->a(Lcom/mapbox/mapboxsdk/maps/n$p;)V

    .line 16
    invoke-virtual {p5, p0}, Lcom/mapbox/mapboxsdk/t/a/i;->a(Lcom/mapbox/mapboxsdk/t/a/b;)V

    .line 17
    invoke-direct {p0, p7}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/style/sources/a;)V

    .line 18
    new-instance p3, Lcom/mapbox/mapboxsdk/t/a/b$a;

    invoke-direct {p3, p0, p2, p7}, Lcom/mapbox/mapboxsdk/t/a/b$a;-><init>(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/style/sources/a;)V

    invoke-virtual {p1, p3}, Lcom/mapbox/mapboxsdk/maps/MapView;->addOnDidFinishLoadingStyleListener(Lcom/mapbox/mapboxsdk/maps/MapView$s;)V

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "The style has to be non-null and fully loaded."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/maps/Style;)Lcom/mapbox/mapboxsdk/maps/Style;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->m:Lcom/mapbox/mapboxsdk/maps/Style;

    return-object p1
.end method

.method private a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/t/a/a;
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/geometry/LatLng;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mapbox/mapboxsdk/geometry/LatLng;",
            ")TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->l()Lcom/mapbox/mapboxsdk/maps/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mapbox/mapboxsdk/maps/w;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/t/a/a;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/geometry/LatLng;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/t/a/b;)Ljava/util/List;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->g:Ljava/util/List;

    return-object p0
.end method

.method private a(Lcom/mapbox/mapboxsdk/style/sources/a;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->o:Lcom/mapbox/mapboxsdk/t/a/h;

    invoke-interface {v0, p1}, Lcom/mapbox/mapboxsdk/t/a/h;->a(Lcom/mapbox/mapboxsdk/style/sources/a;)Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->k:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    .line 23
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->o:Lcom/mapbox/mapboxsdk/t/a/h;

    invoke-interface {p1}, Lcom/mapbox/mapboxsdk/t/a/h;->b()Lcom/mapbox/mapboxsdk/style/layers/Layer;

    move-result-object p1

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    .line 24
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->m:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->k:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/sources/Source;)V

    .line 25
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->n:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->m:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/maps/Style;->a(Lcom/mapbox/mapboxsdk/style/layers/Layer;)V

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->m:Lcom/mapbox/mapboxsdk/maps/Style;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    invoke-virtual {v0, v1, p1}, Lcom/mapbox/mapboxsdk/maps/Style;->b(Lcom/mapbox/mapboxsdk/style/layers/Layer;Ljava/lang/String;)V

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->c()V

    .line 29
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->j:Lcom/mapbox/mapboxsdk/style/layers/Layer;

    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapbox/mapboxsdk/style/layers/d;

    invoke-virtual {p1, v0}, Lcom/mapbox/mapboxsdk/style/layers/Layer;->a([Lcom/mapbox/mapboxsdk/style/layers/d;)V

    .line 30
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->e:Lcom/mapbox/mapboxsdk/u/a/a;

    if-eqz p1, :cond_1

    .line 31
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/u/a/a;)V

    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->f()V

    return-void
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/t/a/b;Lcom/mapbox/mapboxsdk/style/sources/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->a(Lcom/mapbox/mapboxsdk/style/sources/a;)V

    return-void
.end method

.method static synthetic b(Lcom/mapbox/mapboxsdk/t/a/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method a(Landroid/graphics/PointF;)Lcom/mapbox/mapboxsdk/t/a/a;
    .locals 4
    .param p1    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            ")TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->a:Lcom/mapbox/mapboxsdk/maps/n;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/mapbox/mapboxsdk/t/a/b;->o:Lcom/mapbox/mapboxsdk/t/a/h;

    invoke-interface {v2}, Lcom/mapbox/mapboxsdk/t/a/h;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/mapbox/mapboxsdk/maps/n;->a(Landroid/graphics/PointF;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/geojson/Feature;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mapbox/geojson/Feature;->getProperty(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    .line 37
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {p1, v0, v1}, La/e/d;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mapbox/mapboxsdk/t/a/a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/y;)Lcom/mapbox/mapboxsdk/t/a/a;
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .line 5
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->i:J

    invoke-virtual {p1, v0, v1, p0}, Lcom/mapbox/mapboxsdk/t/a/y;->a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, La/e/d;->c(JLjava/lang/Object;)V

    .line 7
    iget-wide v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->i:J

    .line 8
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->f()V

    return-object p1
.end method

.method abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TS;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/t/a/y;

    .line 11
    iget-wide v2, p0, Lcom/mapbox/mapboxsdk/t/a/b;->i:J

    invoke-virtual {v1, v2, v3, p0}, Lcom/mapbox/mapboxsdk/t/a/y;->a(JLcom/mapbox/mapboxsdk/t/a/b;)Lcom/mapbox/mapboxsdk/t/a/a;

    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v1}, La/e/d;->c(JLjava/lang/Object;)V

    .line 14
    iget-wide v1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->i:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->i:J

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->f()V

    return-object v0
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/a;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, La/e/d;->c(J)V

    .line 17
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->f()V

    return-void
.end method

.method public a(Lcom/mapbox/mapboxsdk/t/a/r;)V
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/t/a/r;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method abstract a(Lcom/mapbox/mapboxsdk/u/a/a;)V
    .param p1    # Lcom/mapbox/mapboxsdk/u/a/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 18
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->c:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/t/a/b;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TD;>;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->f:Ljava/util/List;

    return-object v0
.end method

.method public b(Lcom/mapbox/mapboxsdk/t/a/a;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {v0, p1}, La/e/d;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, La/e/d;->c(JLjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->f()V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t update annotation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/t/a/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", the annotation isn\'t active annotation."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AnnotationManager"

    .line 10
    invoke-static {v0, p1}, Lcom/mapbox/mapboxsdk/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract b(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mapbox/mapboxsdk/t/a/a;

    .line 3
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/a;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, La/e/d;->c(J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->f()V

    return-void
.end method

.method abstract c()V
.end method

.method d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->m:Lcom/mapbox/mapboxsdk/maps/Style;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/Style;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {v2}, La/e/d;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/t/a/b;->b:La/e/d;

    invoke-virtual {v2, v1}, La/e/d;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mapbox/mapboxsdk/t/a/a;

    .line 5
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/t/a/a;->b()Lcom/mapbox/geojson/Geometry;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/t/a/a;->a()Lcom/google/gson/JsonObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mapbox/geojson/Feature;->fromGeometry(Lcom/mapbox/geojson/Geometry;Lcom/google/gson/JsonObject;)Lcom/mapbox/geojson/Feature;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/t/a/a;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->k:Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;

    invoke-static {v0}, Lcom/mapbox/geojson/FeatureCollection;->fromFeatures(Ljava/util/List;)Lcom/mapbox/geojson/FeatureCollection;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mapbox/mapboxsdk/style/sources/GeoJsonSource;->a(Lcom/mapbox/geojson/FeatureCollection;)V

    return-void
.end method

.method public e()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->l:Lcom/mapbox/mapboxsdk/t/a/b$b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/maps/n$o;)V

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->a:Lcom/mapbox/mapboxsdk/maps/n;

    iget-object v1, p0, Lcom/mapbox/mapboxsdk/t/a/b;->l:Lcom/mapbox/mapboxsdk/t/a/b$b;

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/maps/n;->b(Lcom/mapbox/mapboxsdk/maps/n$p;)V

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->p:Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-virtual {v0, p0}, Lcom/mapbox/mapboxsdk/t/a/i;->b(Lcom/mapbox/mapboxsdk/t/a/b;)V

    .line 4
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/t/a/b;->p:Lcom/mapbox/mapboxsdk/t/a/i;

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/t/a/i;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/t/a/b;->d()V

    return-void
.end method
