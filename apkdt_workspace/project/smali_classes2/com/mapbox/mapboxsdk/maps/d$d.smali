.class Lcom/mapbox/mapboxsdk/maps/d$d;
.super Ljava/lang/Object;
.source "AttributionDialogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapbox/mapboxsdk/maps/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/mapbox/mapboxsdk/maps/n;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/n;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/d$d;->a:Lcom/mapbox/mapboxsdk/maps/n;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/d$d;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mapbox/mapboxsdk/p/a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/maps/d$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/maps/d$d;->a:Lcom/mapbox/mapboxsdk/maps/n;

    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/n;->m()Lcom/mapbox/mapboxsdk/maps/Style;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/maps/Style;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mapbox/mapboxsdk/style/sources/Source;

    .line 7
    invoke-virtual {v3}, Lcom/mapbox/mapboxsdk/style/sources/Source;->getAttribution()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    new-instance v2, Lcom/mapbox/mapboxsdk/p/d$a;

    invoke-direct {v2, v0}, Lcom/mapbox/mapboxsdk/p/d$a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 11
    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/p/d$a;->a(Z)Lcom/mapbox/mapboxsdk/p/d$a;

    .line 12
    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/p/d$a;->b(Z)Lcom/mapbox/mapboxsdk/p/d$a;

    .line 13
    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/p/d$a;->c(Z)Lcom/mapbox/mapboxsdk/p/d$a;

    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mapbox/mapboxsdk/p/d$a;->a([Ljava/lang/String;)Lcom/mapbox/mapboxsdk/p/d$a;

    .line 15
    invoke-virtual {v2}, Lcom/mapbox/mapboxsdk/p/d$a;->a()Lcom/mapbox/mapboxsdk/p/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mapbox/mapboxsdk/p/d;->a()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/mapbox/mapboxsdk/maps/d$d;)Ljava/util/Set;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mapbox/mapboxsdk/maps/d$d;->a()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
