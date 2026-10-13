.class public Lcom/mapbox/mapboxsdk/annotations/Marker;
.super Lcom/mapbox/mapboxsdk/annotations/a;
.source "Marker.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/mapbox/mapboxsdk/annotations/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private iconId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Lcom/mapbox/mapboxsdk/annotations/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private k:Z

.field private l:I

.field private m:I

.field private position:Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/annotations/a;-><init>()V

    return-void
.end method

.method private a(Lcom/mapbox/mapboxsdk/annotations/e;Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/annotations/e;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Marker;->d()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v3

    iget v4, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->m:I

    iget v5, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->l:I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mapbox/mapboxsdk/annotations/e;->a(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/annotations/Marker;Lcom/mapbox/mapboxsdk/geometry/LatLng;II)Lcom/mapbox/mapboxsdk/annotations/e;

    const/4 p2, 0x1

    .line 13
    iput-boolean p2, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->k:Z

    return-object p1
.end method

.method private b(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/annotations/e;
    .locals 3
    .param p1    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->j:Lcom/mapbox/mapboxsdk/annotations/e;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/mapbox/mapboxsdk/annotations/e;

    sget v1, Lcom/mapbox/mapboxsdk/l;->mapbox_infowindow_content:I

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/a;->b()Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/mapbox/mapboxsdk/annotations/e;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;ILcom/mapbox/mapboxsdk/maps/n;)V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->j:Lcom/mapbox/mapboxsdk/annotations/e;

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->j:Lcom/mapbox/mapboxsdk/annotations/e;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/annotations/e;
    .locals 2
    .param p1    # Lcom/mapbox/mapboxsdk/maps/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/mapbox/mapboxsdk/maps/MapView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/mapbox/mapboxsdk/annotations/a;->a(Lcom/mapbox/mapboxsdk/maps/n;)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/mapbox/mapboxsdk/annotations/a;->a(Lcom/mapbox/mapboxsdk/maps/MapView;)V

    .line 3
    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/a;->b()Lcom/mapbox/mapboxsdk/maps/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/maps/n;->e()Lcom/mapbox/mapboxsdk/maps/n$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p0}, Lcom/mapbox/mapboxsdk/maps/n$b;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Lcom/mapbox/mapboxsdk/annotations/e;

    invoke-direct {v1, v0, p1}, Lcom/mapbox/mapboxsdk/annotations/e;-><init>(Landroid/view/View;Lcom/mapbox/mapboxsdk/maps/n;)V

    iput-object v1, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->j:Lcom/mapbox/mapboxsdk/annotations/e;

    .line 6
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->j:Lcom/mapbox/mapboxsdk/annotations/e;

    invoke-direct {p0, p1, p2}, Lcom/mapbox/mapboxsdk/annotations/Marker;->a(Lcom/mapbox/mapboxsdk/annotations/e;Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/annotations/e;

    .line 7
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->j:Lcom/mapbox/mapboxsdk/annotations/e;

    return-object p1

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lcom/mapbox/mapboxsdk/annotations/Marker;->b(Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/annotations/e;

    move-result-object v0

    .line 9
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0, p0, p1, p2}, Lcom/mapbox/mapboxsdk/annotations/e;->a(Lcom/mapbox/mapboxsdk/annotations/Marker;Lcom/mapbox/mapboxsdk/maps/n;Lcom/mapbox/mapboxsdk/maps/MapView;)V

    .line 11
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/mapbox/mapboxsdk/annotations/Marker;->a(Lcom/mapbox/mapboxsdk/annotations/e;Lcom/mapbox/mapboxsdk/maps/MapView;)Lcom/mapbox/mapboxsdk/annotations/e;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->l:I

    return-void
.end method

.method public c()Lcom/mapbox/mapboxsdk/annotations/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->h:Lcom/mapbox/mapboxsdk/annotations/d;

    return-object v0
.end method

.method public d()Lcom/mapbox/mapboxsdk/geometry/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->position:Lcom/mapbox/mapboxsdk/geometry/LatLng;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->j:Lcom/mapbox/mapboxsdk/annotations/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/annotations/e;->a()Lcom/mapbox/mapboxsdk/annotations/e;

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->k:Z

    return-void
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/annotations/Marker;->k:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Marker [position["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mapbox/mapboxsdk/annotations/Marker;->d()Lcom/mapbox/mapboxsdk/geometry/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
