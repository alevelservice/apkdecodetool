.class Lcom/mapbox/mapboxsdk/maps/j;
.super Ljava/lang/Object;
.source "InfoWindowManager.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mapbox/mapboxsdk/annotations/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/mapbox/mapboxsdk/maps/n$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/mapbox/mapboxsdk/maps/n$l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/mapbox/mapboxsdk/maps/n$n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Lcom/mapbox/mapboxsdk/maps/n$m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a()Lcom/mapbox/mapboxsdk/maps/n$b;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->b:Lcom/mapbox/mapboxsdk/maps/n$b;

    return-object v0
.end method

.method public a(Lcom/mapbox/mapboxsdk/annotations/e;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/mapbox/mapboxsdk/annotations/Marker;)Z
    .locals 1
    .param p1    # Lcom/mapbox/mapboxsdk/annotations/Marker;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mapbox/mapboxsdk/annotations/Marker;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b()Lcom/mapbox/mapboxsdk/maps/n$l;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->d:Lcom/mapbox/mapboxsdk/maps/n$l;

    return-object v0
.end method

.method c()Lcom/mapbox/mapboxsdk/maps/n$m;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->f:Lcom/mapbox/mapboxsdk/maps/n$m;

    return-object v0
.end method

.method d()Lcom/mapbox/mapboxsdk/maps/n$n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->e:Lcom/mapbox/mapboxsdk/maps/n$n;

    return-object v0
.end method

.method e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->c:Z

    return v0
.end method

.method f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mapbox/mapboxsdk/annotations/e;

    .line 3
    invoke-virtual {v1}, Lcom/mapbox/mapboxsdk/annotations/e;->c()V

    goto :goto_0

    :cond_0
    return-void
.end method
